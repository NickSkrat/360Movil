using _360Movil.Repository;
using System.Web.Mvc;

namespace Prueba360Movil.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult getContainer(string eir)
        {
            Repos rep = new Repos();
            var result = rep.GetContainer(eir);
            ViewBag.Container = result.container;
            ViewBag.Alert = result.message;
            return View("Index",result);
        }
    }
}