using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BaoDienTu.BAL.Interface;
using BaoDienTu.Domain.Request.SubCategory;
using BaoDienTu.Domain.Response.Subcategory;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BaoDienTu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SubCategoryController : ControllerBase
    {
        private readonly ISubCategoryService subCategoryService;

        public SubCategoryController(ISubCategoryService subCategoryService)
        {
            this.subCategoryService = subCategoryService;
        }

        [HttpGet]
        [Route("/api/subcategory/getByCategoryId/{categoryId}")]
        public async Task<IEnumerable<SubByCategoryId>> GetPostByCategoryId(int categoryId)
        {
            return await subCategoryService.GetPostByCategoryId(categoryId);
        }
        [HttpPost]
        [Route("/api/subcategory/create")]
        public async Task<CreateSubCategoryResult> Create(CreateSubCategory request)
        {
            return await subCategoryService.Create(request);
        }
        [HttpDelete]
        [Route("/api/subcategory/delete/{id}")]
        public async Task<DeleteSubCategoryResult> Delete(int id)
        {
            return await subCategoryService.Delete(id);
        }
    }
}
