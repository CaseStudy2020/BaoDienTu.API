﻿using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Request.Account
{
    public class RegisterRequest
    {
        public string Email { get; set; }
        public string Password { get; set; }
    }
}