using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BaoDienTu.BAL.Interface;
using BaoDienTu.Domain.Request.Category;
using BaoDienTu.Domain.Request.Post;
using BaoDienTu.Domain.Response.Category;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BaoDienTu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
        private readonly ICategoryService categoryService;

        public CategoryController(ICategoryService categoryService)
        {
            this.categoryService = categoryService;
        }
        [HttpGet]
        [Route("/api/category/gets")]
        public async Task<IEnumerable<CategoryView>> Gets()
        {
            return await categoryService.Gets();
        }
        [HttpPost]
        [Route("/api/category/create")]
        public async Task<CreateCategoryResult> Create(CreateCategory request)
        {
            return await categoryService.Create(request);
        }
        //[HttpPost]
        //[Route("/api/category/update")]
        //public async Task<UpdateCategoryResult> Update(UpdateCategory request)
        //{
        //    return await categoryService.Update(request);
        //}
        [HttpDelete]
        [Route("/api/category/delete/{id}")]
        public async Task<DeleteCategoryResult> Delete(int id)
        {
            return await categoryService.Delete(id);
        }
        [HttpGet]
        [Route("/api/category/get/{id}")]
        public async Task<Category> Get(int id)
        {
            return await categoryService.Get(id);
        }
    }
}
