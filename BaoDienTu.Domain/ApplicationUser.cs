using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain
{
   public class ApplicationUser:IdentityUser
    {
        public bool Gender { get; set; }
        public DateTime DoB { get; set; }
        public string Avatar { get; set; }
        public string   Address { get; set; }
        public bool IsDeleted { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }
    }
}
