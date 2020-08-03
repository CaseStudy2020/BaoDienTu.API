using BaoDienTu.Domain.Enum;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BaoDienTu.Domain.Response.Post
{
    public class Top10MostViewOfDay
    {
        public int PostId { get; set; }
        public string Title { get; set; }
        public string DateCreated { get; set; }
        public int NumberOfComment { get; set; }
        public string Thumbnail { get; set; }
    }
}
