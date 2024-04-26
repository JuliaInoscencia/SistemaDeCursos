using Microsoft.AspNetCore.Mvc;

namespace Alua02ExercicioControleCursos.Controllers
{
    public class AlunoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
