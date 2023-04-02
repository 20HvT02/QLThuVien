using Azure;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using QLThuVien.Models;
using X.PagedList;

namespace QLThuVien.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("admin")]
    [Route("admin/homeadmin")]
    public class HomeAdminController : Controller
    {
        QlthuVienLtwebContext db = new QlthuVienLtwebContext();

        [Route("")]
        [Route("index")]
        public IActionResult Index()
        {
            return View();
        }

        [Route("DanhMucSach")]
        public IActionResult DanhMucSach(int? page)
        {
            int pageNumber = page == null || page < 1 ? 1 : page.Value;
            int pageSize = 12;

            var lstsanpham = db.Saches.AsNoTracking().OrderBy(x => x.TenSach);

            PagedList<Sach> lst = new PagedList<Sach>(lstsanpham, pageNumber, pageSize);
            return View(lst);
        }
    }
}
