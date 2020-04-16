using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Cat.Service.Api.ViewModel
{
    public class VoteRequest
    {
        public int WinId { get; set; }

        public int LostId { get; set; }
    }
}
