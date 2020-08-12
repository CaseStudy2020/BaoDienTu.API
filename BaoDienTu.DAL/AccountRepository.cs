using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.Account;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL
{
    public class AccountRepository : BaseRepository, IAccountRepository
    {
        public async Task<GetUserByUserIdResult> GetUserByUserId(string userId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@UserId", userId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<GetUserByUserIdResult>(cnn: conn,
                                param: parameters,
                                sql: "SP_getUserByUserId",
                                commandType: CommandType.StoredProcedure));
        }
    }
}
