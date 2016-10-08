using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
  public  class Item 
    {
        public int ID { get; set; }
        [Required]
        [StringLength(120)]
        public string itemName { get; set; }
       
        public int UnitPrice_ID { get; set; }
        public decimal ItemCount { get; set; }
        [StringLength(30)]
        public string ItemNumber { get; set; }
        public decimal MenimumCount { get; set; }
        public decimal ItemUnitPrice { get; set; }

        [ForeignKey("UnitPrice_ID")]
        public UnitPrice UnitPrice { get; set; }
        
        public decimal TotalPrice { get; set; }
        public decimal SuggestedPrice { get; set; }
        ICollection<TransHead> TransHead { get; set; }
    }
}
