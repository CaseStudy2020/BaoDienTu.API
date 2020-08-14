using BaoDienTu.BAL.Interface;
using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.SubCategory;
using BaoDienTu.Domain.Response.Subcategory;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL
{
    public class SubCategoryService : ISubCategoryService
    {
        private readonly ISubCategoryRepository subCategoryRepository;

        public SubCategoryService( ISubCategoryRepository subCategoryRepository)
        {
            this.subCategoryRepository = subCategoryRepository;
        }

        public async Task<CreateSubCategoryResult> Create(CreateSubCategory request)
        {
            return await subCategoryRepository.Create(request);
        }

        public async Task<DeleteSubCategoryResult> Delete(int subCategoryId)
        {
            return await subCategoryRepository.Delete(subCategoryId);
        }

        public async Task<SubCategory> Get(int id)
        {
            return await subCategoryRepository.Get(id);
        }

        public async Task<IEnumerable<SubByCategoryId>> GetPostByCategoryId(int categoryId)
        {
            return await subCategoryRepository.GetPostByCategoryId(categoryId);
        }

        public async Task<UpdateSubCategoryResult> Update(UpdateSubCategory request)
        {
            return await subCategoryRepository.Update(request);
        }
    }
}
