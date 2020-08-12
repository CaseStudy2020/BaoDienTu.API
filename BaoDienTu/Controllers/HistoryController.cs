using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BaoDienTu.BAL.Interface;
using BaoDienTu.Domain.Request.History;
using BaoDienTu.Domain.Response.History;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BaoDienTu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HistoryController : ControllerBase
    {
        private readonly IHistoryService historyService;

        public HistoryController(IHistoryService historyService)
        {
            this.historyService = historyService;
        }
        [HttpPost]
        [Route("/api/history/save")]
        public async Task<SaveHistoryResult> Save(SaveHistory request)
        {
            return await historyService.Save(request);
        }
        [HttpGet]
        [Route("/api/history/GetAllHistoryByUserId/{userId}")]
        public async Task<IEnumerable<HistoryByUserIdResult>> GetAllHistoryByUserId(string userId)
        {
            return await historyService.GetAllHistoryByUserId(userId);
        }
    }
}
