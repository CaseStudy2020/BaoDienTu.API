using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.Comment
{
    public class UpdateComment
    {
        public string ContentComment { get; set; }
        public int CommentId { get; set; }
        public int PostId { get; set; }
        public string UserId { get; set; }
    }
}
