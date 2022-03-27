using System;
using System.Collections.Generic;
using System.IO;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Net;
using System.Web.Mvc;
using DACNTT.Models;
using PagedList.Mvc;
using PagedList;
namespace DACNTT.Controllers
{
    public class HomeController : Controller
    {
        BigSchool_NhuHoangHaiEntities2 db = new BigSchool_NhuHoangHaiEntities2();
        //Hình ảnh của các hotel
        public ActionResult hinhanh(int id)
        {
            ViewBag.Images = db.Images.ToList();
            ViewBag.hotels = db.hotels.Where(x => x.hotel_id == id).ToList();
            return View();
        }
        //DANH SÁCH CÁC HOTEL
        public ActionResult DSHOTEL(int? page)
        {
            ViewBag.Images = db.Images.ToList();
            ViewBag.locations = db.locations.ToList();
            var pageNumber = page ?? 1;
            ViewBag.hotels = db.hotels.ToList().ToPagedList(pageNumber, 4);
            return View();
        }
        [HttpPost]
        //Tìm kiếm tên Khách sạn và địa điểm khách sạn theo nhu cầu của khách hàng
        public ActionResult Search(string search, int? page)
        {
            ViewBag.locations = db.locations.ToList();
            var pageNumber = page ?? 1;
            ViewBag.hotels = db.hotels.Where(x => x.hotel_name.Contains(search) || x.locations.city.Contains(search) || search == null).ToList().ToPagedList(pageNumber, 3);          
            return View("DSHOTEL");
        }
        //Danh sách các phòng của các hotel.
        public ActionResult room(int id)
        {
            ViewBag.bookcustomer = db.bookcustomer.ToList();
            ViewBag.Images = db.Images.ToList();
            ViewBag.locations = db.locations.ToList();
            ViewBag.hotels = db.hotels.ToList();
            ViewBag.section = db.sections.ToList();
            ViewBag.sale = db.sales.ToList();
            var model = db.rooms.Where(p => p.hotel_id == id).ToList();
            return View(model);
        }
        [HttpPost]
        public ActionResult room(int id, string NameCus, string Phone, DateTime? NgayStart, DateTime? NgayEnd)
        {
            try
            {
                bookcustomer book = new bookcustomer();
                book.room_id = id;
                string email = (string)Session["Email"];
                book.Email = email;
                book.NameCus = NameCus;
                book.Phone = Phone;
                book.NgayStart = NgayStart;
                book.NgayEnd = NgayEnd;
                db.bookcustomer.Add(book);
                db.SaveChanges();
                return RedirectToAction("Success", "Home");
            }
            catch (Exception)
            {
                return RedirectToAction("Failed", "Home");
            }
        }
        //Thêm mới phòng mới cho hotel do Admin quản lý.
        public ActionResult CreateRoom(int id)
        {
            ViewBag.id = id;
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateRoom([Bind(Include = "room_id,hotel_id,section_id,sale_id,floor,gia")] rooms room)
        {
            if (ModelState.IsValid)
            {
                db.rooms.Add(room);
                db.SaveChanges();
                return RedirectToAction("Success", "Home");
            }
            return View(room);
        }
        //Trang chủ chung
        public ActionResult Index()
        {
            ViewBag.rooms = db.rooms.ToList();
            ViewBag.hotels = db.hotels.ToList();
            ViewBag.locations = db.locations.ToList();
            ViewBag.Testimonials = db.Testimonials.ToList();
            return View();
        }
        //Trang chủ Admin
        public ActionResult IndexAdmin()
        {
            ViewBag.rooms = db.rooms.ToList();
            ViewBag.hotels = db.hotels.ToList();
            ViewBag.locations = db.locations.ToList();
            ViewBag.Testimonials = db.Testimonials.ToList();
            return View();
        }
        //Thông tin đăng ký phòng của khách hàng
        public ActionResult Cart()
        {
            ViewBag.AspNetUsers = db.AspNetUsers.ToList();
            string email = (string)Session["Email"];
            ViewBag.bookcustomer = db.bookcustomer.ToList();
            ViewBag.rooms = db.rooms.ToList();
            ViewBag.hotels = db.hotels.ToList();
            return View();
        }
        //Về chúng tôi
        public ActionResult About()
        {
            ViewBag.rooms = db.rooms.ToList();
            ViewBag.hotels = db.hotels.ToList();
            ViewBag.locations = db.locations.ToList();
            ViewBag.Testimonials = db.Testimonials.ToList();
            return View("About");
        }
        //Tiếp cận
        public ActionResult Contact()
        {
            ViewBag.rooms = db.rooms.ToList();
            ViewBag.hotels = db.hotels.ToList();
            ViewBag.locations = db.locations.ToList();
            ViewBag.Testimonials = db.Testimonials.ToList();
            return View("Contact");
        }
        //Blog mới
        public ActionResult Blog()
        {
            ViewBag.rooms = db.rooms.ToList();
            ViewBag.hotels = db.hotels.ToList();
            ViewBag.locations = db.locations.ToList();
            ViewBag.Testimonials = db.Testimonials.ToList();
            return View("Blog");
        }
        //FORM ĐẶT PHÒNG THÀNH CÔNG
        public ActionResult Success()
        {
            return View("Success");
        }
        //FORM ĐẶT PHÒNG THất bại
        public ActionResult Failed()
        {
            return View("Failed");
        }
        //FORM gửi Email THÀNH CÔNG
        public ActionResult SuccessEmail()
        {
            return View("SuccessEmail");
        }
        //FORM gửi Email THất bại
        public ActionResult FailedEmail()
        {
            return View("FailedEmail");
        }
        // Trang quản lý thông tin KH của ADMIN
        public ActionResult Admin()
        {
            ViewBag.hotels = db.hotels.ToList();
            ViewBag.locations = db.locations.ToList();
            ViewBag.Testimonials = db.Testimonials.ToList();
            ViewBag.rooms = db.rooms.ToList();
            ViewBag.bookcustomer = db.bookcustomer.ToList();
            if ((string)Session["Email"] != "")
            {
                var Role = db.AspNetUsers.ToList();
                int r = 0;
                foreach (var user in Role)
                {
                    if (user.Email.Equals(Session["Email"]))
                    {
                        r = (int)user.Role;
                    }
                }
                System.Diagnostics.Debug.WriteLine(r);
                if (r == 1)
                {
                    return View();
                }
            }
            return RedirectToAction("IndexAdmin");
        }
        //Trang thông tin các khách sạn và địa điểm hiện tại
        public ActionResult HOTELAdmin()
        {
            ViewBag.locations = db.locations.ToList();
            ViewBag.hotels = db.hotels.ToList();
            ViewBag.bookcustomer = db.bookcustomer.ToList();
            if ((string)Session["Email"] != "")
            {
                var Role = db.AspNetUsers.ToList();
                int r = 0;
                foreach (var user in Role)
                {
                    if (user.Email.Equals(Session["Email"]))
                    {
                        r = (int)user.Role;
                    }
                }
                if (r == 1)
                {
                    return View();
                }
            }
            return View();
        }
        public ActionResult QLTK()
        {
            ViewBag.AspNetUsers = db.AspNetUsers.ToList();
            if ((string)Session["Email"] != "")
            {
                var Role = db.AspNetUsers.ToList();
                int r = 0;
                foreach (var user in Role)
                {
                    if (user.Email.Equals(Session["Email"]))
                    {
                        r = (int)user.Role;
                    }
                }
                if (r == 1)
                {
                    return View();
                }
            }
            return View();
        }
        [HttpPost]
        public ActionResult SearchQLTK(string search)
        {
            ViewBag.AspNetUsers = db.AspNetUsers.Where(x => x.Name.Contains(search) || search == null).ToList();
            return View("QLTK");
        }
        //Tìm kiếm tên khách sạn và mã số(id) khách sạn
        public ActionResult SearchHOTELADMIN(string search_param)
        {
            ViewBag.locations = db.locations.ToList();
            try
            {
                int id = Int32.Parse(search_param);
                ViewBag.hotels = db.hotels.Where(x => x.hotel_id == id).ToList();
            }
            catch (Exception)
            { 
                ViewBag.hotels = db.hotels.Where(x => x.hotel_name.Contains(search_param)).ToList();
            };        
            return View("HOTELAdmin");
        }
        //Tìm kiếm số phòng khách hàng đã đặt, tìm kiếm theo tên khách hàng
        public ActionResult SearchAdmin(string search_param)
        {
            ViewBag.rooms = db.rooms.ToList();
            try
            {
                int id = Int32.Parse(search_param);
                ViewBag.bookcustomer = db.bookcustomer.Where(x => x.room_id == id).ToList();
            }catch(Exception)
            {
                ViewBag.bookcustomer = db.bookcustomer.Where(x => x.NameCus.Contains(search_param)).ToList();
            };    
            return View("Admin");
            //ModelState.AddModelError("", "Không tìm thấy"); 
        }
        //Thêm mới khách sạn do Admin quản lý
        public ActionResult CreateHotel()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateHotel([Bind(Include = "hotel_id,location_id,hotel_name,note,hotel_gia,hotel_review,hotel_title,hotel_rating,hotel_image,hoteme_link")] hotels hotel, HttpPostedFileBase hinhanh)
        {
            if (hinhanh != null && hinhanh.ContentLength > 0)
            {
                hotel.hotel_image = System.IO.Path.GetFileName(hinhanh.FileName); //lấy tên hình ảnh
                string urlImage = Server.MapPath("~/Content/imagehoanghai" + hotel.hotel_image); //trả về thư mục với đường dẫn + tên hình ảnh đã lấy trước đó
                hinhanh.SaveAs(urlImage);
                hotel.hotel_image = "../../Content/imagehoanghai" + hotel.hotel_image; //lưu vào database
            }
            if (ModelState.IsValid)
            {
                try
                {
                    db.hotels.Add(hotel);
                    db.SaveChanges();
                    return RedirectToAction("HOTELAdmin");
                }
                catch (Exception) { ModelState.AddModelError("", "Thông báo: Lỗi mã khách sạn đã tồn tại, vui lòng thay đổi mã số!!!"); }
            }
            return View(hotel);
        } 
        //Xoá thông tin khách hàng cho Admin
        public ActionResult Delete(int id)
        {
            bookcustomer book = new bookcustomer();
            book.room_id = id;
            book = db.bookcustomer.Find(id);
            db.bookcustomer.Remove(book);
            db.SaveChanges();
            return RedirectToAction("Admin");
        }
        //Xoá thông tin khách sạn của Admin
        public ActionResult DeleteHotel(int id)
        {
            hotels hotel = new hotels();
            hotel.hotel_id = id;
            hotel = db.hotels.Find(id);
            db.hotels.Remove(hotel);
            db.SaveChanges();
            return RedirectToAction("HOTELAdmin");
        }
        //Quản lý tài khoản
        public ActionResult EditQLTK(string id)
        {
            return View(db.AspNetUsers.Where(x => x.Id == id ).FirstOrDefault());
        }
        [HttpPost]
        public ActionResult EditQLTK(AspNetUsers asp)
        {
            try
            {
                db.Entry(asp).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("QLTK");
            }
            catch
            {
                ModelState.AddModelError("", "Chỉnh sửa thất bại, vui lòng thử lại!!!");
                return View();
            }
        }
        //Chỉnh sử thông tin KH cho Admin
        public ActionResult Edit(int id)
        {            
                return View(db.bookcustomer.Where(x => x.room_id == id).FirstOrDefault());            
        }
        [HttpPost]
        public ActionResult Edit(bookcustomer book)
        {
            try
            {              
                    db.Entry(book).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();                
                    return RedirectToAction("Admin");
            }
            catch { 
                return View("Failed");           
            }
        }
        public ActionResult CreateHotelImage(int id)
        {
            ViewBag.id = id;
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateHotelImage([Bind(Include = "Id,Image,hotel_id")] Images image, Images image2, Images image3, HttpPostedFileBase hinhanh, HttpPostedFileBase hinhanh2, HttpPostedFileBase hinhanh3)
        {
            try
            {
                if (hinhanh != null && hinhanh.ContentLength > 0)
                {
                    image.Image = System.IO.Path.GetFileName(hinhanh.FileName); //lấy tên hình ảnh
                    string urlImage = Server.MapPath("~/Content/imagehoanghai" + image.Image); //trả về thư mục với đường dẫn + tên hình ảnh đã lấy trước đó
                    hinhanh.SaveAs(urlImage);
                    image.Image = "../../Content/imagehoanghai" + image.Image; //lưu vào database
                    db.Images.Add(image);
                }
                if (hinhanh2 != null && hinhanh2.ContentLength > 0)
                {
                    image2.Image = System.IO.Path.GetFileName(hinhanh2.FileName); //lấy tên hình ảnh
                    string urlImage2 = Server.MapPath("~/Content/imagehoanghai" + image2.Image); //trả về thư mục với đường dẫn + tên hình ảnh đã lấy trước đó
                    hinhanh2.SaveAs(urlImage2);
                    image2.Image = "../../Content/imagehoanghai" + image2.Image; //lưu vào database
                    db.Images.Add(image2);
                }
                if (hinhanh3 != null && hinhanh3.ContentLength > 0)
                {
                    image3.Image = System.IO.Path.GetFileName(hinhanh3.FileName); //lấy tên hình ảnh
                    string urlImage3 = Server.MapPath("~/Content/imagehoanghai" + image3.Image); //trả về thư mục với đường dẫn + tên hình ảnh đã lấy trước đó
                    hinhanh3.SaveAs(urlImage3);
                    image3.Image = "../../Content/imagehoanghai" + image3.Image; //lưu vào database
                    db.Images.Add(image3);
                }
            }
            catch (Exception) { return View(); }
            db.SaveChanges();
            return RedirectToAction("HOTELAdmin");
        }
    }
}
