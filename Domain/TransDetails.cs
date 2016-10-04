using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
   public class TransDetails
    {
        public int ID { get; set; }
        [Required]
        [StringLength(60)]
        public TransHead TransHead { get; set; }
        public Item items { get; set; }
        public decimal ItemCount { get; set; }
        public decimal PricePerUnit { get; set; }
        public decimal TotalPrice { get; set; }
    }
}
