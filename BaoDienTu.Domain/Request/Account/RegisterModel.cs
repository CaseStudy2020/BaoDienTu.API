﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BaoDienTu.Domain.Request.Account
{
    public class RegisterModel
    {
        [Required]
        public string Email { get; set; }
        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }
        [Required]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "Confirm password not match")]
        [Display(Name = "Confirm password")]
        public string ConfirmPassword { get; set; }

        public bool Gender { get; set; }
        public DateTime DoB { get; set; }
        public string Avatar { get; set; }
        public string Address { get; set; }
        public string FullName { get; set; }
        public string PhoneNumber { get; set; }
        public DateTime DateCreated { get; set; }
    }
}
