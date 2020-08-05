using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.Comment
{
    public class CreateComment
    {
        public string UserId { get; set; }
        public int PostId { get; set; }
        public string ContentComment { get; set; }
        public int ParentCommentId { get; set; }
    }
}
