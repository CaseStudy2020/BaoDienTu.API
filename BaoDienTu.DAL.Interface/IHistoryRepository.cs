using BaoDienTu.Domain.Request.History;
using BaoDienTu.Domain.Response.History;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL.Interface
{
   public interface IHistoryRepository
    {
        Task<SaveHistoryResult> Save(SaveHistory request);
        Task<IEnumerable<HistoryByUserIdResult>> GetAllHistoryByUserId(string userId);
    }
}
