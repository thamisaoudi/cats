using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CatApp.WebMVC.Models
{
    public class Cat
    {
        public int CatId { get; set; }

        public string Url { get; set; }

        public Score Score { get; set; }
    }
}
