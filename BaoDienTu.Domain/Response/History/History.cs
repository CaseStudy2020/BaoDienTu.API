using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.History
{
    public class History
    {
        public int PostId { get; set; }
        public string UserId { get; set; }
        public DateTime Date { get; set; }
    }
}
