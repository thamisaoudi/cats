using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Cat.Service.Api.Model
{
    public class TVote
    {
        public int VoteId { get; set; }
        public int WinCatId { get; set; }
        public int LostCatId { get; set; }
        public DateTime? CreationDate { get; set; }

        public Cat LostCat { get; set; }
        public Cat WinCat { get; set; }
    }
}
