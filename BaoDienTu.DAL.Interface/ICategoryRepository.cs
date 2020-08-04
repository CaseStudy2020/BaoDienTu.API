using BaoDienTu.Domain.Request.Category;
using BaoDienTu.Domain.Request.Post;
using BaoDienTu.Domain.Response.Category;
using BaoDienTu.Domain.Response.Post;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL.Interface
{
    public interface ICategoryRepository
    {
        Task<IEnumerable<CategoryView>> Gets();

        Task<DeleteCategoryResult> Delete(int categoryId);

        Task<CreateCategoryResult> Create(CreateCategory request);
        Task<UpdateCategoryResult> Update(UpdateCategory request);
       

    }
}
