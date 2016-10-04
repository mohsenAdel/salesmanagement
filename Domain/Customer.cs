using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
  public  class Customer
    {
        public int ID { get; set; }

        [Required]

        [MaxLength(50), MinLength(3)]
        public string CustomerName { get; set; }
        [StringLength(30)]
        public string CustomerPhone { get; set; }

        ICollection<TransHead> TransHead { get; set; }
    }
}
