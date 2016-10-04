using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
  public  class UnitPrice
    {
        public int ID { get; set; }
        [Required]
        [StringLength(50)]
        public string UntPrice { get; set; }
        ICollection<Item> Items { get; set; }
    }
}
