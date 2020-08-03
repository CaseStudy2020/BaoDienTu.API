using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BaoDienTu.BAL.Interface;
using BaoDienTu.Domain.Request.Post;
using BaoDienTu.Domain.Response.Post;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace BaoDienTu.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PostController : ControllerBase
    {
       

        private readonly ILogger<PostController> _logger;
        private readonly IPostService postService;

        public PostController(ILogger<PostController> logger,
                                IPostService postService)
        {
            _logger = logger;
            this.postService = postService;
        }

        [HttpGet]
        [Route("/api/post/gets")]
        public async Task<IEnumerable<PostView>> Gets()
        {
            return await postService.Gets();
        }

        [HttpGet]
        [Route("/api/post/GetsFastInfoPost")]
        public async Task<IEnumerable<FastInfoPostView>> GetsFastInfoPost()
        {
            return await postService.GetsFastInfoPost();
        }
        [HttpGet]
        [Route("/api/post/Gets5FastInfoPost")]
        public async Task<IEnumerable<Fast5InfoPostView>> Gets5FastInfoPost()
        {
            return await postService.Gets5FastInfoPost();
        }

        [HttpGet]
        [Route("/api/post/get/{id}")]
        public async Task<PostView> Get(int id)
        {
            return await postService.Get(id);
        }
        [HttpGet]
        [Route("/api/post/getByCategoryId/{categoryId}")]
        public async Task<IEnumerable<PostByCategoryId>> GetPostByCategoryId(int categoryId)
        {
            return await postService.GetPostByCategoryId(categoryId);
        }
        [HttpGet]
        [Route("/api/post/getBySubCategoryId/{subCategoryId}")]
        public async Task<IEnumerable<PostBySubCategoryId>> GetPostBySubCategoryId(int subCategoryId)
        {
            return await postService.GetPostBySubCategoryId(subCategoryId);
        }

        [HttpGet]
        [Route("/api/post/getTopPostByDay")]
        public async Task<IEnumerable<TopPostByDay>> GetTopPostByDay(DateTime dateToGet, int numberOfPost)
        {
            return await postService.GetTopPostByDay(dateToGet, numberOfPost);
        }

        [HttpDelete]
        [Route("/api/post/delete/{id}")]
        public async Task<DeletePostResult> Delete(int id)
        {
            return await postService.Delete(id);
        }
        [HttpPost]
        [Route("/api/post/save")]
        public async Task<SavePostResult> Save(SavePost request)
        {
            return await postService.Save(request);
        }
        [HttpPost]
        [Route("/api/post/create")]
        public async Task<CreatePostResult> Create(CreatePost request)
        {
            return await postService.Create(request);
        }
        [HttpPost]
        [Route("/api/post/update")]
        public async Task<UpdatePostResult> Update(UpdatePost request)
        {
            return await postService.Update(request);
        }
    }
}
