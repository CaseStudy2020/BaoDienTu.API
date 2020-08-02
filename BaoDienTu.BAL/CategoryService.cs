using BaoDienTu.BAL.Interface;
using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.Category;
using BaoDienTu.Domain.Response.Category;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL
{
    public class CategoryService : ICategoryService
    {
        private readonly ICategoryRepository categoryRepository;

        public CategoryService(ICategoryRepository categoryRepository)
        {
            this.categoryRepository = categoryRepository;
        }

        public async Task<CreateCategoryResult> Create(CreateCategory request)
        {
            return await categoryRepository.Create(request);
        }

        public async Task<DeleteCategoryResult> Delete(int categoryId)
        {
            return await categoryRepository.Delete(categoryId);
        }

        public async Task<IEnumerable<CategoryView>> Gets()
        {
            return await categoryRepository.Gets();
        }

        public async Task<UpdateCategoryResult> Update(UpdateCategory request)
        {
            return await categoryRepository.Update(request);
        }
    }
}
