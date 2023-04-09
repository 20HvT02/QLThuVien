using Microsoft.AspNetCore.Mvc;
using QLThuVien.Models;
using QLThuVien.Models.ThongTinTaiKhoanViewModels;
using System.Data.Entity;
using static QLThuVien.Models.ThongTinTaiKhoanViewModels.ThongTinTaiKhoanViewModel;

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
            var nv = db.NhanViens.FirstOrDefault();
            var user = db.Users.FirstOrDefault();

            var viewModel = new ThongTinTaiKhoanViewModel
            {
                NhanVien = nv,
                User = user
            };
            return View(viewModel);
        }
        [Route("EditProfile")]
        [HttpGet]
        public IActionResult EditProfile(string maNhanVien)
        {
            var nv = db.NhanViens.FirstOrDefault();
            var user = db.Users.FirstOrDefault();

            var viewModel = new ThongTinTaiKhoanViewModel
            {
                NhanVien = nv,
                User = user
            };
            return View(viewModel);
        }

        [Route("EditProfile")]
        [HttpPost]
        public IActionResult EditProfile(ThongTinTaiKhoanViewModel thongTin)
        {
            var nv = db.NhanViens.FirstOrDefault(); // Lấy thông tin nhân viên từ CSDL
            var user = db.Users.FirstOrDefault(); // Lấy thông tin người dùng từ CSDL

            // Cập nhật thông tin từ form vào đối tượng nhân viên
            nv.TenNhanVien = thongTin.NhanVien.TenNhanVien;
            nv.DiaChi = thongTin.NhanVien.DiaChi;
            nv.TenNhanVien = thongTin.NhanVien.TenNhanVien;
            nv.DiaChi = thongTin.NhanVien.DiaChi;
            nv.GioiTinh = thongTin.NhanVien.GioiTinh;
            nv.Que = thongTin.NhanVien.Que;
            nv.Sdt = thongTin.NhanVien.Sdt;
            nv.CaLam = thongTin.NhanVien.CaLam;
            nv.Description = thongTin.NhanVien.Description;

            // Cập nhật thông tin từ form vào đối tượng người dùng
            user.Password = thongTin.User.Password;
            user.EmailDk = thongTin.User.EmailDk;
            user.LoaiUser = thongTin.User.LoaiUser;
            // Lưu các thay đổi vào CSDL
            db.SaveChanges();

            return RedirectToAction("ThongTinTaiKhoan");
        }


    }
}
