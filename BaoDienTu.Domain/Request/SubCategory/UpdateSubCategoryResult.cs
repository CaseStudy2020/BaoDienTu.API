﻿using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Request.SubCategory
{
    public class UpdateSubCategoryResult
    {
        public int SubCategoryId { get; set; }
        public string Message { get; set; }
        public string SubCategoryName { get; set; }
        public int CategoryId { get; set; }
    }
}
