using System;

using Cat.Service.Api.ViewModel;

using Cat.Service.Api.Model;
using Cat.Service.Api.DataLayer;
using Microsoft.Extensions.Options;
using System.Collections.Generic;
using Cat.Service.Api.Helper;
using System.Linq;

namespace Cat.Service.Api.Business
{
    public class CatBus : ICatBus
    {

        readonly CatDal _catDal;
        private readonly DatabaseSettings dbSettings;

        public CatBus(IOptions<DatabaseSettings> dbOptions)
        {
            this.dbSettings = dbOptions.Value;
            _catDal = new CatDal(this.dbSettings.ConnectionString);
        }
        public GetCatScoresResponse GetCatScores()
        {
            var dbCats = _catDal.CatSelect();

            var cats = new List<Model.Cat>();

            foreach (var cat in dbCats)
            {
                cats.Add(new Model.Cat
                {
                    CatId = cat.CatId,
                    Url = cat.Url,
                    Score = ScoreHelpler.CalculateScore(cat.TVoteWinCat.Count(), cat.TVoteLostCat.Count())
                });
            }

            return new GetCatScoresResponse { Cats = cats.OrderByDescending(c => c.Score?.Value) };

        }

        public Tuple<Model.Cat, Model.Cat> GetCandidatesCats()
        {
            var Cats = _catDal.CatRandomSelect();
            return Tuple.Create(Cats.ElementAt(0), Cats.ElementAt(1));
        }

        public bool InsertVote(VoteRequest voteRequest)
        {
            return _catDal.VoteInsert(new TVote { WinCatId = voteRequest.WinId, LostCatId = voteRequest.LostId }) > 0;
        }
    }
}
