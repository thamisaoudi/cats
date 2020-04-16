
using CatApp.WebMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CatApp.WebMVC.Business
{
    public interface ICatBus
    {
        Task<CatScoresModel> GetCatScores();

        Task SendVote(VoteModel vote);

        Task<Tuple<Cat, Cat>> GetCatsForVote();
    }
}
