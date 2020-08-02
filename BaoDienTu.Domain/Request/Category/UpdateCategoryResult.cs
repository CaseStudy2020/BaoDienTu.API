using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Request.Category
{
    public class UpdateCategoryResult
    {
        public int CategoryId { get; set; }
        public string Message { get; set; }
        public string CategoryName { get; set; }
    }
}
