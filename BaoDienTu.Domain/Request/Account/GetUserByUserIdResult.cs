using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BaoDienTu.Domain.Request.Account
{
    public class GetUserByUserIdResult
    {
        public string Id { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public bool Gender { get; set; }
        [DataType(DataType.Date)]
        public DateTime Dob { get; set; }
        public string Avatar { get; set; }
        public string Address { get; set; }
        public string FullName { get; set; }
    }
}
