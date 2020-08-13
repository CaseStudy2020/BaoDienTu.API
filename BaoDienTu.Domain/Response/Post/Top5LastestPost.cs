using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.Post
{
    public class Top5LastestPost
    {
        public int PostId { get; set; }
        public string Title { get; set; }
        public string DateCreated { get; set; }
        public int NumberOfComment { get; set; }
        public string Thumbnail { get; set; }
        public int View { get; set; }
        public string ShortContent { get; set; }
        public string ShortContent2 { get; set; }
        public int Like { get; set; }
    }
}
