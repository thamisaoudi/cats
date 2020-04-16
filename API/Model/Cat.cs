using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Cat.Service.Api.Model
{
    public  class Cat
    {
        public Cat()
        {
            TVoteLostCat = new HashSet<TVote>();
            TVoteWinCat = new HashSet<TVote>();
        }

        public int CatId { get; set; }
        public string Url { get; set; }

        public ICollection<TVote> TVoteLostCat { get; set; }
        public ICollection<TVote> TVoteWinCat { get; set; }

        public Score Score { get; set; }
    }
}
