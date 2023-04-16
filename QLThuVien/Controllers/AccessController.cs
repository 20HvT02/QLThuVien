using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using MimeKit;
using MailKit.Net.Smtp;
using QLThuVien.Models;
using System.Linq;

namespace QLThuVien.Controllers
{
    public class AccessController : Controller
    {
        private readonly QlthuVienLtwebContext _db;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public AccessController(QlthuVienLtwebContext db, IHttpContextAccessor httpContextAccessor)
        {
            _db = db;
            _httpContextAccessor = httpContextAccessor;
        }

        [HttpGet]
        public IActionResult Login()
        {
            if (HttpContext.Session.GetString("Username") == null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }

        [HttpPost]
        public IActionResult Login(User user)
        {
            if (HttpContext.Session.GetString("Username") == null)
            {
                var u = _db.Users.Where(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password)).FirstOrDefault();
                if (u != null)
                {
                    HttpContext.Session.SetString("Username", u.Username.ToString());
                    return RedirectToAction("Index", "Home");
                }
            }
            return View(user);
        }

        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Register(User user)
        {
            if (ModelState.IsValid)
            {
                var checkUser = _db.Users.Where(x => x.Username.Equals(user.Username)).FirstOrDefault();
                var checkEmail = _db.Users.Where(x => x.EmailDk.Equals(user.EmailDk)).FirstOrDefault();
                if (checkUser == null && checkEmail == null)
                {
                    _db.Users.Add(user);
                    _db.SaveChanges();
                    return RedirectToAction("Index", "Home");
                }
            }
            return View(user);
        }
    }
}
