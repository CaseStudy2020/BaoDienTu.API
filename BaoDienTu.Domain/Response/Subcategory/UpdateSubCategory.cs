using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.Subcategory
{
    public class UpdateSubCategory
    {
        public int CategoryId { get; set; }
        public string SubCategoryName { get; set; }
        public int SubCategoryId { get; set; }
    }
}
