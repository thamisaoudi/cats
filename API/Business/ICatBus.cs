using System;
using Cat.Service.Api.ViewModel;

using Cat.Service.Api.Model;

namespace Cat.Service.Api.Business
{
    public interface ICatBus
    {
        GetCatScoresResponse GetCatScores();
        public Tuple<Model.Cat, Model.Cat> GetCandidatesCats();
        public bool InsertVote(VoteRequest voteRequest);
    }
}
