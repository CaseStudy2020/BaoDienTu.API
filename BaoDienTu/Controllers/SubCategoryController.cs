﻿using System;
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
        [Route("/api/subcategory/getsubbycategoryid/{categoryId}")]
        public async Task<IEnumerable<SubByCategoryId>> GetSubByCategoryId(int categoryId)
        {
            return await subCategoryService.GetSubByCategoryId(categoryId);
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
        [HttpPost]
        [Route("/api/subcategory/update")]
        public async Task<UpdateSubCategoryResult> Update(UpdateSubCategory request)
        {
            return await subCategoryService.Update(request);
        }
    
        [HttpGet]
        [Route("/api/subcategory/get/{id}")]
        public async Task<SubCategory> Get(int id)
        {
            return await subCategoryService.Get(id);
        }
        [HttpGet]
        [Route("/api/subcategory/gets")]
        public async Task<IEnumerable<SubCategoryView>> Gets()
        {
            return await subCategoryService.Gets();
        }
    }
}
