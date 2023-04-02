using Microsoft.AspNetCore.Mvc;
using QLThuVien.Models;
using System.Security.Cryptography;
using System.Text;

namespace QLThuVien.Controllers
{
    public class AccessController : Controller
    {
        QlthuVienLtwebContext db = new QlthuVienLtwebContext();
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
                var u = db.Users.Where(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password)).FirstOrDefault();
                if (u != null)
                {
                    HttpContext.Session.SetString("UserName", u.Username.ToString());
                    return RedirectToAction("Index", "Home");
                }
            }
            return View();
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
                var checkUser = db.Users.Where(x => x.Username.Equals(user.Username) && x.EmailDk.Equals(user.EmailDk));

                if (checkUser == null)
                {
                    user.Password = GetMD5(user.Password);
                    db.Users.Add(user);
                    db.SaveChanges();
                    return RedirectToAction("Index", "Home");
                }

            }
            return View();
        }
        public static string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;
        }
    }
}
