using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.Post
{
    public class Fast5InfoPostView
    {
        public int PostId { get; set; }
        public string Title { get; set; }
        public string DateCreated { get; set; }
        public int NumberOfComment { get; set; }
        public string Thumbnail { get; set; }
    }
}
