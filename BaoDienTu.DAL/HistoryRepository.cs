using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.History;
using BaoDienTu.Domain.Response.History;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL
{
    public class HistoryRepository : BaseRepository, IHistoryRepository
    {
        public async Task<IEnumerable<HistoryByUserIdResult>> GetAllHistoryByUserId(string userId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add("@UserId", userId);
            return (await SqlMapper.QueryAsync<HistoryByUserIdResult>(cnn: conn,
                                param: parameters,
                                sql: "SP_getAllHistory",
                                commandType: CommandType.StoredProcedure));
        }

        public async Task<SaveHistoryResult> Save(SaveHistory request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@UserId", request.UserId);
                parameters.Add("@PostId", request.PostId);
               

                return (await SqlMapper.QueryFirstOrDefaultAsync<SaveHistoryResult>(cnn: conn,
                                      param: parameters,
                                      sql: "saveHistory",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new SaveHistoryResult()
                {
                    
                    Message = "Something went wrong, please try again"
                };
            }
        }
    }
}
