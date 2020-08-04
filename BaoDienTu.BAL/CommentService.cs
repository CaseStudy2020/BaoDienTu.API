using BaoDienTu.BAL.Interface;
using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.Comment;
using BaoDienTu.Domain.Response.Comment;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL
{
    public class CommentService : ICommentService
    {
        private readonly ICommentRepository commentRepository;

        public CommentService(ICommentRepository commentRepository)
        {
            this.commentRepository = commentRepository;
        }

        public async Task<CreateCommentResult> Create(CreateComment request)
        {
            return await commentRepository.Create(request);
        }

        public async Task<DeleteCommentResult> Delete(int commentId)
        {
            return await commentRepository.Delete(commentId);
        }

        public async Task<EditCommentResult> Edit(EditComment request)
        {
            return await commentRepository.Edit(request);
        }

        public async Task<CommentView> Get(int commentId)
        {
            return await commentRepository.Get(commentId);
        }

        public async Task<IEnumerable<CommentByParentCommentId>> GetListCommentByParentCommentId(int parentCommentId)
        {
            return await commentRepository.GetListCommentByParentCommentId(parentCommentId);
        }

        public async Task<IEnumerable<CommentByPostId>> GetListCommentByPostId(int postId)
        {
            return await commentRepository.GetListCommentByPostId(postId);
        }

        public async Task<UpdateCommentResult> Update(UpdateComment request)
        {
            return await commentRepository.Update(request);
        }
    }
}
