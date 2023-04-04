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

    }
}
