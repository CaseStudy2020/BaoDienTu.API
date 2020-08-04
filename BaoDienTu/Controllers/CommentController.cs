using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BaoDienTu.BAL.Interface;
using BaoDienTu.Domain.Request.Comment;
using BaoDienTu.Domain.Response.Comment;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BaoDienTu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CommentController : ControllerBase
    {
        private readonly ICommentService commentService;

        public CommentController(ICommentService commentService)
        {
            this.commentService = commentService;
        }

        [HttpGet]
        [Route("/api/comment/get/{id}")]
        public async Task<CommentView> Get(int id)
        {
            return await commentService.Get(id);
        }
        [HttpPost]
        [Route("/api/comment/create")]
        public async Task<CreateCommentResult> Create(CreateComment request)
        {
            return await commentService.Create(request);
        }
        [HttpPost]
        [Route("/api/comment/edit")]
        public async Task<EditCommentResult> Edit(EditComment request)
        {
            return await commentService.Edit(request);
        }
        [HttpPost]
        [Route("/api/comment/update")]
        public async Task<UpdateCommentResult> Update(UpdateComment request)
        {
            return await commentService.Update(request);
        }
        [HttpDelete]
        [Route("/api/comment/delete/{id}")]
        public async Task<DeleteCommentResult> Delete(int id)
        {
            return await commentService.Delete(id);
        }
    }
}
