using Microsoft.AspNetCore.Mvc;
using QLThuVien.Models;

namespace QLThuVien.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("admin/accountadmin")]
    public class AccountAdminController : Controller
    {
        QlthuVienLtwebContext db = new QlthuVienLtwebContext();
        [Route("")]
        [Route("ThongTinTaiKhoan")]
        public IActionResult ThongTinTaiKhoan()
        {

            return View();
        }

        [Route("CapTaiKhoan")]
        [HttpGet]
        public IActionResult CapTaiKhoan()
        {
            return View();
        }

        [HttpPost]
        public IActionResult CapTaiKhoan(User newUser)
        {
            var username = db.Users.Where(x => x.Username == newUser.Username);
            if(username.Any())
            {
                return View(newUser);
            }
            db.Users.Add(newUser);
            db.SaveChanges();
            return RedirectToAction("ThongTinTaiKhoan");
        }
    }
}
