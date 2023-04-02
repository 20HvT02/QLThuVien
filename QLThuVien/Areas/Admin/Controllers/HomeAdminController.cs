using Azure;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
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

            var lstsanpham = db.Saches.AsNoTracking().Include(s => s.MaTheLoaiNavigation).OrderBy(s => s.TenSach);


            PagedList<Sach> lst = new PagedList<Sach>(lstsanpham, pageNumber, pageSize);
            return View(lst);
        }


        [Route("SuaSanPham")]
        [HttpGet]
        public IActionResult SuaSanPham(string maSach)
        {
            ViewBag.MaNxb = new SelectList(db.NhaXbs.ToList(), "MaNxb", "TenNxb");
            ViewBag.MaTheLoai = new SelectList(db.TheLoais.ToList(), "MaTheLoai", "TenTheLoai");
            ViewBag.MaNgonNgu = new SelectList(db.NgonNgus.ToList(), "MaNgonNgu", "TenNgonNgu");
            var sach = db.Saches.Find(maSach);
            return View(sach);
        }

        [Route("SuaSanPham")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult SuaSanPham(Sach sach)
        {
/*            if (ModelState.IsValid)
            {*/
                db.Entry(sach).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("DanhMucSach", "HomeAdmin");
/*            }
            return View(sach);*/
        }

        [Route("ThemMoiSach")]
        [HttpGet]
        public IActionResult ThemMoiSach()
        {
            ViewBag.MaNxb = new SelectList(db.NhaXbs.ToList(), "MaNxb", "TenNxb");
            ViewBag.MaTheLoai = new SelectList(db.TheLoais.ToList(), "MaTheLoai", "TenTheLoai");
            ViewBag.MaNgonNgu = new SelectList(db.NgonNgus.ToList(), "MaNgonNgu", "TenNgonNgu");
            return View();
        }

        [Route("ThemMoiSach")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult ThemMoiSach(Sach newSach)
        {
            if (ModelState.IsValid)
            {
                db.Saches.Add(newSach);
                db.SaveChanges();
                return RedirectToAction("DanhMucSach");
            }
            return View(newSach);
        }


    }
}
