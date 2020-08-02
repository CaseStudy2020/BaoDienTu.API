using BaoDienTu.Domain.Request.Post;
using BaoDienTu.Domain.Request.SubCategory;
using BaoDienTu.Domain.Response.Category;
using BaoDienTu.Domain.Response.Post;
using BaoDienTu.Domain.Response.Subcategory;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL.Interface
{
    public interface ISubCategoryRepository
    {

        Task<DeleteSubCategoryResult> Delete(int subCategoryId);

        Task<CreateSubCategoryResult> Create(CreateSubCategory request);
       
        Task<IEnumerable<SubByCategoryId>> GetPostByCategoryId(int categoryId);
       
    }
}
