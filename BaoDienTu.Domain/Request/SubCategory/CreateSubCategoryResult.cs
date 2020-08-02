using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Request.SubCategory
{
    public class CreateSubCategoryResult
    {
        public int CategoryId { get; set; }
        public string Message { get; set; }
        public string SubCategoryName { get; set; }
        public int SubCategoryId { get; set; }
    }
}
