using BaoDienTu.Domain.Request.History;
using BaoDienTu.Domain.Response.History;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL.Interface
{
    public interface IHistoryService
    {
        Task<SaveHistoryResult> Save(SaveHistory request);
        Task<IEnumerable<HistoryByUserIdResult>> GetAllHistoryByUserId(string userId);
    }
}
