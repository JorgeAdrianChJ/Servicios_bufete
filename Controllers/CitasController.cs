using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Servicios_bufete.Models;

namespace Servicios_bufete.Controllers
{
    // Scaffold-DbContext "Server=.;Database=BD_BUFETE;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -Force
    [Route("api/[controller]")]
    [ApiController]
    public class CitasController : ControllerBase
    {
        private readonly BD_BUFETEContext _context;

        public CitasController(BD_BUFETEContext context)
        {
            _context = context;
        }

        // GET: api/Citas
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Cita>>> GetCita()
        {
            if (_context.Cita == null)
            {
                return NotFound();
            }
            return await _context.Cita.ToListAsync();
        }

        // GET: api/Citas/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Cita>> GetCita(int id)
        {
            if (_context.Cita == null)
            {
                return NotFound();
            }
            var Cita = await _context.Cita.FindAsync(id);

            if (Cita == null)
            {
                return NotFound();
            }

            return Cita;
        }

        // PUT: api/Citas/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCita(int id, Cita Cita)
        {
            if (id != Cita.Id)
            {
                return BadRequest();
            }

            _context.Entry(Cita).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CitaExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }
        [HttpGet()]
        [Route("ObtenerCitasPorUsuario/{IdUsuario}")]
        public async Task<ActionResult<IEnumerable<Cita>>> ObtenerCitasPorUsuario([FromRoute] int IdUsuario)
        {
            if (_context.Cita == null)
            {
                return NotFound();
            }
            var citas = _context.Cita.Where(p => p.IdUsuario == IdUsuario).ToList();

            if (citas == null)
            {
                return NotFound();
            }

            return citas;
        }
        [HttpGet()]
        [Route("ObtenerCitasActivasPorEspecialidad/{IdUsuario}/{Especialidad}")]
        public async Task<ActionResult<IEnumerable<Cita>>> ObtenerCitasActivasPorEspecialidad([FromRoute] int IdUsuario, [FromRoute] int Especialidad)
        {
            if (_context.Cita == null)
            {
                return NotFound();
            }
            var citas = _context.Cita.Where(p => p.IdUsuario == IdUsuario && p.Especialidad == Especialidad && p.Fecha > DateTime.Now).ToList();

            if (citas == null)
            {
                return NotFound();
            }

            return citas;
        }
        [HttpGet()]
        [Route("ObtenerCitasActivasPorEspecialidadPorHora/{Especialidad}/{Hora}/{Fecha}")]
        public async Task<ActionResult<IEnumerable<Cita>>> ObtenerCitasActivasPorEspecialidadPorHora( [FromRoute] int Especialidad, [FromRoute] int Hora, [FromRoute] DateTime Fecha)
        {
            if (_context.Cita == null)
            {
                return NotFound();
            }
            var citas = _context.Cita.Where(p => p.Hora == Hora && p.Especialidad == Especialidad && p.Fecha.Year == Fecha.Year && p.Fecha.Month == Fecha.Month && p.Fecha.Day == Fecha.Day).ToList();

            if (citas == null)
            {
                return NotFound();
            }

            return citas;
        }
        // POST: api/Citas
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Cita>> PostCita(Cita Cita)
        {
            if (_context.Cita == null)
            {
                return Problem("Entity set 'BD_BUFETEContext.Cita'  is null.");
            }
            _context.Cita.Add(Cita);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetCita", new { id = Cita.Id }, Cita);
        }

        // DELETE: api/Citas/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCita(int id)
        {
            if (_context.Cita == null)
            {
                return NotFound();
            }
            var Cita = await _context.Cita.FindAsync(id);
            if (Cita == null)
            {
                return NotFound();
            }

            _context.Cita.Remove(Cita);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CitaExists(int id)
        {
            return (_context.Cita?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
