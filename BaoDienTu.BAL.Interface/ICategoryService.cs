using BaoDienTu.Domain.Request.Category;
using BaoDienTu.Domain.Response.Category;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL.Interface
{
    public interface ICategoryService
    {
        Task<IEnumerable<CategoryView>> Gets();
        Task<CreateCategoryResult> Create(CreateCategory request);
        Task<UpdateCategoryResult> Update(UpdateCategory request);
        Task<DeleteCategoryResult> Delete(int categoryId);
    }
}
