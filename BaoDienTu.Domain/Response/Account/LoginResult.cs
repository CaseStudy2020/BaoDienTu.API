﻿using System;
using System.Collections.Generic;
using System.Text;

namespace BaoDienTu.Domain.Response.Account
{
    public class LoginResult
    {
        public string UserId { get; set; }
        public string Message { get; set; }
        public bool Success { get; set; }
    }
}
