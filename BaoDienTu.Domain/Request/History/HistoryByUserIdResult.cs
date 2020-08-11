using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BaoDienTu.Domain.Request.History
{
    public class HistoryByUserIdResult
    {
        public string Message { get; set; }
        public int PostId { get; set; }
        [DataType(DataType.Date)]
        public DateTime DateCreated { get; set; }
        public string Title { get; set; }
        public string Thumbnail { get; set; }
        public int Like { get; set; }
        public string Link { get; set; }
        public int View { get; set; }
        public DateTime DateView { get; set; }
    }
}
