using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.Comment
{
    public class CommentByPostId
    {
        public int CommentId { get; set; }
        public int PostId { get; set; }
        public string UserId { get; set; }
        public string ContentComment { get; set; }
        public DateTime DateCreated { get; set; }
        public int ParentCommentId { get; set; }
        public bool IsDeleted { get; set; }
    }
}
