using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.Author
{
    public class Author
    {
        public int AuthorId { get; set; }
        public string AuthorName { get; set; }
        public string Password { get; set; }
        public DateTime DoB { get; set; }
        public string  Email { get; set; }
        public string PhoneNumber { get; set; }
        public string  Address { get; set; }
        public string Avartar { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }
        public bool IsDeleted { get; set; }
    }
}
