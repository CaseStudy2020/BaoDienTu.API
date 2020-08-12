using BaoDienTu.Domain.Request.Account;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL.Interface
{
    public interface IAccountService
    {
        Task<GetUserByUserIdResult> GetUserByUserId(string userId);
    }
}
