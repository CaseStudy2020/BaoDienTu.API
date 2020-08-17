using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.Post;
using BaoDienTu.Domain.Response.Post;
using BaoDienTu.Domain.Response.Search;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL
{
    public class PostRepository : BaseRepository, IPostRepository
    {
        public async Task<CreatePostResult> Create(CreatePost request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                
                parameters.Add("@Title", request.Title);
                parameters.Add("@Content", request.Content);                      
                parameters.Add("@AuthorId", request.AuthorId);             
                parameters.Add("@SubCategoryId", request.SubCategoryId);
                parameters.Add("@Thumbnail", request.Thumbnail);


                return (await SqlMapper.QueryFirstOrDefaultAsync<CreatePostResult>(cnn: conn,
                                      param: parameters,
                                      sql: "SP_createNewPost",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new CreatePostResult()
                {
                    PostId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }

        public async Task<DeletePostResult> Delete(int postId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@PostId", postId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<DeletePostResult>(cnn: conn,
                             param: parameters,
                            sql: "SP_softDelete",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<PostView> Get(int postId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@PostId", postId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<PostView>(cnn: conn,
                                param: parameters,
                                sql: "SP_getPostByPostID",
                                commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<PostByCategoryId>> GetPostByCategoryId(int categoryId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@CategoryId", categoryId);
            return (await SqlMapper.QueryAsync<PostByCategoryId>(cnn: conn,
                                param: parameters,
                                sql: "SP_getPostByCategoryId",
                                commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<PostBySubCategoryId>> GetPostBySubCategoryId(int subCategoryId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@SubCategoryId", subCategoryId);
            return (await SqlMapper.QueryAsync<PostBySubCategoryId>(cnn: conn,
                                param: parameters,
                                sql: "SP_getListPostBySubCategoryId",
                                commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<PostView>> Gets()
        {
            return await SqlMapper.QueryAsync<PostView>(conn, "SP_getAllPost", CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<Fast5InfoPostView>> Gets5FastInfoPost()
        {
            return await SqlMapper.QueryAsync<Fast5InfoPostView>(conn, "SP_get5FastInfoPost", CommandType.StoredProcedure);
        }
        public async Task<IEnumerable<Top5LastestPost>> GetsTop5LastestPost()
        {
            return await SqlMapper.QueryAsync<Top5LastestPost>(conn, "SP_getTop5LastestPost", CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<FastInfoPostView>> GetsFastInfoPost()
        {
            return await SqlMapper.QueryAsync<FastInfoPostView>(conn, "SP_getFastInfoPost", CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<Top10MostViewOfDay>> GetTop10MostViewOfDay()
        {
            return await SqlMapper.QueryAsync<Top10MostViewOfDay>(conn, "SP_getTop10MostViewOfDay", CommandType.StoredProcedure);
        }

        public async Task<IEnumerable<TopPostByDay>> GetTopPostByDay(DateTime dateToGet, int numberOfPost)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@DateToGet", dateToGet);
            parameters.Add("@NumberOfPost", numberOfPost);
            return (await SqlMapper.QueryAsync<TopPostByDay>(cnn: conn,
                                param: parameters,
                                sql: "SP_getTopPostByDay",
                                commandType: CommandType.StoredProcedure));
        }

        public async Task<SavePostResult> Save(SavePost request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@PostId", request.PostId);
                parameters.Add("@Title", request.Title);
                parameters.Add("@Content", request.Content);
                parameters.Add("@Like", request.Like);
                parameters.Add("@Link", request.Link);
                parameters.Add("@Status", request.Status);
                parameters.Add("@PostHashTagId", request.PostHashTagId);
                parameters.Add("@AuthorId", request.AuthorId);
                parameters.Add("@CategoryId", request.CategoryId);
                parameters.Add("@SubCategoryId", request.SubCategoryId);
                parameters.Add("@AverageRate", request.AverageRate);
                parameters.Add("@View", request.View);

                return (await SqlMapper.QueryFirstOrDefaultAsync<SavePostResult>(cnn: conn,
                                      param: parameters,
                                      sql: "sp_SavePost",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new SavePostResult()
                {
                    PostId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }

        public async Task<UpdatePostResult> Update(UpdatePost request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@PostId", request.PostId);
                parameters.Add("@Title", request.Title);
                parameters.Add("@Content", request.Content);
                parameters.Add("@Like", request.Like);
                parameters.Add("@Link", request.Link);
                parameters.Add("@Status", request.Status);
                parameters.Add("@PostHasTagId", request.PostHashTagId);
                parameters.Add("@AuthorId", request.AuthorId);           
                parameters.Add("@SubCategoryId", request.SubCategoryId);
                parameters.Add("@AverageRate", request.AverageRate);
                parameters.Add("@View", request.View);
                parameters.Add("@IsDeleted", request.IsDeleted);
                parameters.Add("@Thumbnail", request.Thumbnail);

                return (await SqlMapper.QueryFirstOrDefaultAsync<UpdatePostResult>(cnn: conn,
                                      param: parameters,
                                      sql: "SP_updatePost",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new UpdatePostResult()
                {
                    PostId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }



        public async Task<IEnumerable<Top3LastestPostByCategoryId>> GetsTop3LastestPostByCategoryId(int categoryId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@CategoryId", categoryId);
            return (await SqlMapper.QueryAsync<Top3LastestPostByCategoryId>(cnn: conn,
                                param: parameters,
                                sql: "Get3PostByCategoryId",
                                commandType: CommandType.StoredProcedure));
        }

       public async Task<List<SearchPost>> Search(string keyword)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add(@"keyword", keyword);
            return (await SqlMapper.QueryAsync<SearchPost>(cnn: conn, sql: "sp_SearchTitle", param: parameters, commandType: CommandType.StoredProcedure)).ToList();
  
        }

        public async Task<SearchPost> SearchContent(string keyword)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add(@"keyword", keyword);
            return await SqlMapper.QueryFirstOrDefaultAsync<SearchPost>(cnn: conn, sql: "sp_SearchContent", param: parameters, commandType: CommandType.StoredProcedure);
        }

        public async Task<SearchPost> SearchDate(string keyword)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add(@"keyword", keyword);
            return await SqlMapper.QueryFirstOrDefaultAsync<SearchPost>(cnn: conn, sql: "sp_Search24h", param: parameters, commandType: CommandType.StoredProcedure);
                
        }
    }
}
