using BaoDienTu.Domain.Request.SubCategory;
using BaoDienTu.Domain.Response.Subcategory;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL.Interface
{
    public interface ISubCategoryService
    {
        Task<IEnumerable<SubByCategoryId>> GetPostByCategoryId(int categoryId);
        Task<CreateSubCategoryResult> Create(CreateSubCategory request);
        Task<DeleteSubCategoryResult> Delete(int subCategoryId);
        Task<UpdateSubCategoryResult> Update(UpdateSubCategory request);
        Task<SubCategory> Get(int id);
    }
}
