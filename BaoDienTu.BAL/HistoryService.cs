using BaoDienTu.BAL.Interface;
using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.History;
using BaoDienTu.Domain.Response.History;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL
{
    public class HistoryService : IHistoryService
    {
        private readonly IHistoryRepository historyRepository;

        public HistoryService(IHistoryRepository historyRepository)
        {
            this.historyRepository = historyRepository;
        }

        public async Task<IEnumerable<HistoryByUserIdResult>> GetAllHistoryByUserId(string userId)
        {
            return await historyRepository.GetAllHistoryByUserId(userId);
        }

        public async Task<SaveHistoryResult> Save(SaveHistory request)
        {
            return await historyRepository.Save(request);
        }
    }
}
