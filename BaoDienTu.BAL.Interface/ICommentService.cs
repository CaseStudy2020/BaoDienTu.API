using BaoDienTu.Domain.Request.Comment;
using BaoDienTu.Domain.Response.Comment;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL.Interface
{
    public interface ICommentService
    {
        Task<CommentView> Get(int commentId);
        Task<CreateCommentResult> Create(CreateComment request);
        Task<EditCommentResult> Edit(EditComment request);
        Task<UpdateCommentResult> Update(UpdateComment request);
        Task<DeleteCommentResult> Delete(int commentId);
    }
}
