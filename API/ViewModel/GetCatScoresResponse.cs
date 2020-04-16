using Cat.Service.Api.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace Cat.Service.Api.ViewModel
{
    public class GetCatScoresResponse
    {
        public IEnumerable<Model.Cat> Cats { get; set; }
    }
}
