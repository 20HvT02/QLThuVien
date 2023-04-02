using System;
using System.Collections.Generic;

namespace QLThuVien.Models;

public partial class Sach
{
    public string MaSach { get; set; } = null!;

    public string? TenSach { get; set; }

    public string? TacGia { get; set; }

    public string? NamXb { get; set; }

    public int? SoLuong { get; set; }

    public string? TinhTrangSach { get; set; }

    public string MaNxb { get; set; } = null!;

    public string MaTheLoai { get; set; } = null!;

    public string MaNgonNgu { get; set; } = null!;

    public virtual AnhDdsach? AnhDdsach { get; set; }

    public virtual ICollection<ChiTietHsm> ChiTietHsms { get; } = new List<ChiTietHsm>();

    public virtual ICollection<ChiTietHst> ChiTietHsts { get; } = new List<ChiTietHst>();

    public virtual NgonNgu MaNgonNguNavigation { get; set; } = null!;

    public virtual NhaXb MaNxbNavigation { get; set; } = null!;

    public virtual TheLoai MaTheLoaiNavigation { get; set; } = null!;

    public virtual ViTriSach? ViTriSach { get; set; }
}
