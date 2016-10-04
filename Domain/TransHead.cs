using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
   public class TransHead
    {
        public int ID { get; set; }
        [Required]
        [StringLength(60)]
        public string TransName { get; set; }
        public int TransType { get; set; }
        public int TransNumber { get; set; }
        public DateTime transDate { get; set; }
        public Customer customer { get; set; }
        ICollection<TransDetails> TransDetails { get; set; }
    }
}
