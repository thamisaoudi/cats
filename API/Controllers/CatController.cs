using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Cat.Service.Api.Business;
using Cat.Service.Api.ViewModel;
using Cat.Service.Api.Model;
using Microsoft.AspNetCore.Mvc;

namespace CatApp.Services.Cat.Controllers
{
    [Route("api/[controller]")]
    [Produces("application/json")]
    [ApiController]
    public class CatController : Controller
    {
        private readonly ICatBus _CatBus;

        public CatController(ICatBus CatBus)
        {
            _CatBus = CatBus;
        }

        [HttpGet]
        [Route("scores")]
        public IActionResult GetScores()
        {
            var catscoresResponses = _CatBus.GetCatScores();

            return Ok(catscoresResponses);
        }

        [HttpGet]
        [Route("candidates")]
        public IActionResult Candidates()
        {
            var catscoresResponses = _CatBus.GetCandidatesCats();

            return Ok(catscoresResponses);
        }

        [HttpPost]
        [Route("vote")]
        public void Vote([FromBody]VoteRequest voteRequest)
        {
            _CatBus.InsertVote(voteRequest);
        }
    }
}
