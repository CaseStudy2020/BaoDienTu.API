using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.Account;
using BaoDienTu.Domain.Response.Account;
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

        public async Task<UpdateUserResult> Update(UpdateUser request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@UserId", request.UserId);
                parameters.Add("@FullName", request.FullName);
                parameters.Add("@Gender", request.Gender);
                parameters.Add("@DoB", request.DoB);              
                parameters.Add("@Email", request.Email);
                parameters.Add("@PhoneNumber", request.PhoneNumber);
                parameters.Add("@Address", request.Address);
                parameters.Add("@Avatar", request.Avatar);
              

                return (await SqlMapper.QueryFirstOrDefaultAsync<UpdateUserResult>(cnn: conn,
                                      param: parameters,
                                      sql: "SP_updateUser",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new UpdateUserResult()
                {
                    
                    Message = "Something went wrong, please try again"
                };
            }
        }
    }
}
