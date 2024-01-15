using Final_Project_1.Data;
using Final_Project_1.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Final_Project_1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PaymentController : ControllerBase
    {
        private readonly ApiDbContext _context;

        public PaymentController(ApiDbContext context)
        {
            _context = context;
        }

		[HttpGet]
		public async Task<IActionResult> PaymentDetail()
		{
			var payments = await _context.Payments.ToListAsync();
			return Ok(payments);
		}

		[HttpPost]
		public async Task<IActionResult> AddPayment(Payment data)
		{
			if (ModelState.IsValid)
			{
				await _context.Payments.AddAsync(data);
				await _context.SaveChangesAsync();

				return CreatedAtAction("PaymentDetail", new { id = data.PaymentDetailId }, data);
			}

			return new JsonResult("Something went wrong") { StatusCode = 500 };
		}

		[HttpGet("{id}")]
		public async Task<IActionResult> PaymentDetail(int id)
		{
			var payment = await _context.Payments.FirstOrDefaultAsync(x => x.PaymentDetailId == id);

			if (payment == null)
				return NotFound();

			return Ok(payment);
		}

		[HttpPut("{id}")]
		public async Task<IActionResult> EditPayment(int id, Payment payment)
		{
			if (id != payment.PaymentDetailId)
				return BadRequest();

			var existItem = await _context.Payments.FirstOrDefaultAsync(x => x.PaymentDetailId == id);

			if (existItem == null)
				return NotFound();

			existItem.CardOwnerName = payment.CardOwnerName;
			existItem.CardNumber = payment.CardNumber;
			existItem.ExpirationDate = payment.ExpirationDate;
			existItem.SecurityCode = payment.SecurityCode;

			await _context.SaveChangesAsync();

			return Ok($"Data with id {id} successfully changed!");
		}

		[HttpDelete("{id}")]
		public async Task<IActionResult> DeletePayment(int id)
		{
			var existItem = await _context.Payments.FirstOrDefaultAsync(x => x.PaymentDetailId == id);

			if (existItem == null)
				return NotFound();

			_context.Payments.Remove(existItem);
			await _context.SaveChangesAsync();

			return Ok(existItem);
		}
	}
}
