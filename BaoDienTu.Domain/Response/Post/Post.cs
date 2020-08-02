using BaoDienTu.Domain.Enum;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Runtime.CompilerServices;
using System.Text;

namespace BaoDienTu.Domain.Response.Post
{
    public class Post
    {
        public int PostId { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public int Like { get; set; }
        public string Link { get; set; }
        public Status Status { get; set; }
        public int CategoryId { get; set; }
        public int PostHashTagId { get; set; }
        public int AuthorId { get; set; }
        public int SubCategoryId { get; set; }
        public int View { get; set; }
        [DataType(DataType.Date)]
        public string DateCreated { get; set; }
        public  decimal AverageRate { get; set; }

    }
}
