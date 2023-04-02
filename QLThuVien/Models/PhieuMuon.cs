using System;
using System.Collections.Generic;

namespace QLThuVien.Models;

public partial class PhieuMuon
{
    public string MaHoSoMuon { get; set; } = null!;

    public DateTime? NgayMuon { get; set; }

    public DateTime? ThơiGianCho { get; set; }

    public string? TinhTrang { get; set; }

    public string MaHoSotra { get; set; } = null!;

    public string MaNhanVien { get; set; } = null!;

    public string MaNguoiDoc { get; set; } = null!;

    public virtual ICollection<ChiTietHsm> ChiTietHsms { get; } = new List<ChiTietHsm>();

    public virtual HoSoTra MaHoSotraNavigation { get; set; } = null!;

    public virtual NguoiDoc MaNguoiDocNavigation { get; set; } = null!;

    public virtual NhanVien MaNhanVienNavigation { get; set; } = null!;
}
