using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Final_Project_1.Models
{
    public class Payment
    {
        [Key]
        public int PaymentDetailId { get; set; }
        [Required]
        public string CardOwnerName { get; set; }
        [Required]
        public string CardNumber { get; set; }
        [Required]
        public string ExpirationDate { get; set; }
        [Required]
        public string SecurityCode { get; set; }
    }
}
