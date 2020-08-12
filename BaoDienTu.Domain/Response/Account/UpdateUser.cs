using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.Account
{
    public class UpdateUser
    {
        public string UserId { get; set; }
        public int Gender { get; set; }
        public DateTime DoB { get; set; }
        public string Avatar { get; set; }
        public string Address { get; set; }
        public string FullName { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
     
    }
}
