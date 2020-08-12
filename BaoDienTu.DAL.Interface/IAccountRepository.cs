using BaoDienTu.Domain.Request.Account;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL.Interface
{
    public interface IAccountRepository
    {
        Task<GetUserByUserIdResult> GetUserByUserId(string userId);
    }
}
