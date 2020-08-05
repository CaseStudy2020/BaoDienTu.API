using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.Comment;
using BaoDienTu.Domain.Response.Comment;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL
{
    public class CommentRepository : BaseRepository, ICommentRepository
    {
        public async Task<CreateCommentResult> Create(CreateComment request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();

                parameters.Add("@PostId", request.PostId);
                parameters.Add("@UserId", request.UserId);
                parameters.Add("@ContentComment", request.ContentComment);
                parameters.Add("@ParentCommentId", request.ParentCommentId);
               


                return (await SqlMapper.QueryFirstOrDefaultAsync<CreateCommentResult>(cnn: conn,
                                      param: parameters,
                                      sql: "SP_addComment",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new CreateCommentResult()
                {
                   
                    Message = "Something went wrong, please try again"
                };
            }
        }

        public async Task<DeleteCommentResult> Delete(int commentId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@CommentId", commentId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<DeleteCommentResult>(cnn: conn,
                             param: parameters,
                            sql: "SP_softDeleteComment",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<EditCommentResult> Edit(EditComment request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@CommentID", request.CommentId);
                parameters.Add("@ContentComment", request.ContentComment);
               

                return (await SqlMapper.QueryFirstOrDefaultAsync<EditCommentResult>(cnn: conn,
                                      param: parameters,
                                      sql: "SP_editComment",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new EditCommentResult()
                {
                    CommentId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }

        public async Task<CommentView> Get(int commentId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@CommentId ", commentId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<CommentView>(cnn: conn,
                                param: parameters,
                                sql: "getComment",
                                commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<CommentByParentCommentId>> GetListCommentByParentCommentId(int parentCommentId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@ParentCommentId", parentCommentId);
            return (await SqlMapper.QueryAsync<CommentByParentCommentId>(cnn: conn,
                                param: parameters,
                                sql: "SP_getListCommentByParentCommentId",
                                commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<CommentByPostId>> GetListCommentByPostId(int postId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@PostId", postId);
            return (await SqlMapper.QueryAsync<CommentByPostId>(cnn: conn,
                                param: parameters,
                                sql: "SP_getListCommentByPostId",
                                commandType: CommandType.StoredProcedure));
        }

        public async Task<UpdateCommentResult> Update(UpdateComment request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@CommentID", request.CommentId);
                parameters.Add("@ContentComment", request.ContentComment);
                parameters.Add("@UserId", request.UserId);
                parameters.Add("@PostId", request.PostId);


                return (await SqlMapper.QueryFirstOrDefaultAsync<UpdateCommentResult>(cnn: conn,
                                      param: parameters,
                                      sql: "SP_updateComment",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new UpdateCommentResult()
                {
                    CommentId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }
    }
}
