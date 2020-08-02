using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.Subcategory
{
    public class SubCategory
    {
        public int SubCategoryId { get; set; }
        public string SubCategoryName { get; set; }
        public int CategoryId { get; set; }
    }
}
