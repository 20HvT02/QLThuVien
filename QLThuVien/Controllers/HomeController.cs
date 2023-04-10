using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using QLThuVien.Models;
using System.Diagnostics;
using X.PagedList;

namespace QLThuVien.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        QlthuVienLtwebContext db = new QlthuVienLtwebContext();
        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult HienSanPham()
        {
			var TheLoai = db.TheLoais.ToList();
			ViewBag.Loais = TheLoai;
			var lst = db.Saches.ToList();
            return View(lst);
        }

        


        
        public IActionResult Index(bool showAll = false)
        {
            if (showAll)
            {
                var TheLoai = db.TheLoais.ToList();
                ViewBag.Loais = TheLoai;
            }
            else
            {
                var TheLoai = db.TheLoais.Take(6).ToList();
                ViewBag.Loais = TheLoai;
            }

            var Newest = db.Saches.ToList();
            ViewBag.Newest = Newest;

            var Trending = db.Saches.Take(10).ToList();
            ViewBag.Trending = Trending;

            var lst = db.Saches.Take(8).ToList();
            return View(lst);
        }



        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}