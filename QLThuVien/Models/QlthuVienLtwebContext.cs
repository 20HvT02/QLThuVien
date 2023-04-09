using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace QLThuVien.Models;

public partial class QlthuVienLtwebContext : DbContext
{
    public QlthuVienLtwebContext()
    {
    }

    public QlthuVienLtwebContext(DbContextOptions<QlthuVienLtwebContext> options)
        : base(options)
    {
    }

    public virtual DbSet<AnhDdsach> AnhDdsaches { get; set; }

    public virtual DbSet<ChiTietHsm> ChiTietHsms { get; set; }

    public virtual DbSet<ChiTietHst> ChiTietHsts { get; set; }

    public virtual DbSet<HoSoTra> HoSoTras { get; set; }

    public virtual DbSet<NgonNgu> NgonNgus { get; set; }

    public virtual DbSet<NguoiDoc> NguoiDocs { get; set; }

    public virtual DbSet<NhaXb> NhaXbs { get; set; }

    public virtual DbSet<NhanVien> NhanViens { get; set; }

    public virtual DbSet<PhieuMuon> PhieuMuons { get; set; }

    public virtual DbSet<Sach> Saches { get; set; }

    public virtual DbSet<TheLoai> TheLoais { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<ViTriSach> ViTriSaches { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
/*#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.*/
        => optionsBuilder.UseSqlServer("Data Source=TRAN-XUAN-TIEN\\SQLEXPRESS;Initial Catalog=QLThuVien_LTweb;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<AnhDdsach>(entity =>
        {
            entity.HasKey(e => e.MaSach);

            entity.ToTable("AnhDDSach");

            entity.Property(e => e.MaSach).HasMaxLength(50);
            entity.Property(e => e.TenFileAnh).HasMaxLength(100);
            entity.Property(e => e.ViTri).HasMaxLength(50);

            entity.HasOne(d => d.MaSachNavigation).WithOne(p => p.AnhDdsach)
                .HasForeignKey<AnhDdsach>(d => d.MaSach)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_AnhDDSach_Sach1");
        });

        modelBuilder.Entity<ChiTietHsm>(entity =>
        {
            entity.HasKey(e => new { e.MaHoSoMuon, e.MaSach }).HasName("PK__ChiTietH__0D74BD762E68BD18");

            entity.ToTable("ChiTietHSM");

            entity.Property(e => e.MaHoSoMuon).HasMaxLength(50);
            entity.Property(e => e.MaSach).HasMaxLength(50);
            entity.Property(e => e.TinhTrangSachKhiMuon).HasMaxLength(50);

            entity.HasOne(d => d.MaHoSoMuonNavigation).WithMany(p => p.ChiTietHsms)
                .HasForeignKey(d => d.MaHoSoMuon)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChiTietHS__MaHoS__5812160E");

            entity.HasOne(d => d.MaSachNavigation).WithMany(p => p.ChiTietHsms)
                .HasForeignKey(d => d.MaSach)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChiTietHS__MaSac__59063A47");
        });

        modelBuilder.Entity<ChiTietHst>(entity =>
        {
            entity.HasKey(e => new { e.MaHoSotra, e.MaSach }).HasName("PK__ChiTietH__7712BBD6297BB6DC");

            entity.ToTable("ChiTietHST");

            entity.Property(e => e.MaHoSotra).HasMaxLength(50);
            entity.Property(e => e.MaSach).HasMaxLength(50);
            entity.Property(e => e.ThanhTien).HasColumnType("money");
            entity.Property(e => e.ViPham).HasMaxLength(50);

            entity.HasOne(d => d.MaHoSotraNavigation).WithMany(p => p.ChiTietHsts)
                .HasForeignKey(d => d.MaHoSotra)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChiTietHS__MaHoS__5BE2A6F2");

            entity.HasOne(d => d.MaSachNavigation).WithMany(p => p.ChiTietHsts)
                .HasForeignKey(d => d.MaSach)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ChiTietHS__MaSac__5CD6CB2B");
        });

        modelBuilder.Entity<HoSoTra>(entity =>
        {
            entity.HasKey(e => e.MaHoSotra).HasName("PK__HoSoTra__BC31EC941EA60429");

            entity.ToTable("HoSoTra");

            entity.Property(e => e.MaHoSotra).HasMaxLength(50);
            entity.Property(e => e.MaNhanVien).HasMaxLength(50);
            entity.Property(e => e.NgayTra).HasColumnType("date");

            entity.HasOne(d => d.MaNhanVienNavigation).WithMany(p => p.HoSoTras)
                .HasForeignKey(d => d.MaNhanVien)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__HoSoTra__MaNhanV__5070F446");
        });

        modelBuilder.Entity<NgonNgu>(entity =>
        {
            entity.HasKey(e => e.MaNgonNgu).HasName("PK__NgonNgu__131924EEF368B3D9");

            entity.ToTable("NgonNgu");

            entity.Property(e => e.MaNgonNgu).HasMaxLength(50);
            entity.Property(e => e.TenNgonNgu).HasMaxLength(50);
        });

        modelBuilder.Entity<NguoiDoc>(entity =>
        {
            entity.HasKey(e => e.MaNguoiDoc);

            entity.ToTable("NguoiDoc");

            entity.Property(e => e.MaNguoiDoc).HasMaxLength(50);
            entity.Property(e => e.DiaChi).HasMaxLength(50);
            entity.Property(e => e.GioiTinh).HasMaxLength(50);
            entity.Property(e => e.HoTen).HasMaxLength(50);
            entity.Property(e => e.Sdt)
                .HasMaxLength(50)
                .HasColumnName("SDT");
            entity.Property(e => e.Username).HasMaxLength(50);

            entity.HasOne(d => d.UsernameNavigation).WithMany(p => p.NguoiDocs)
                .HasForeignKey(d => d.Username)
                .HasConstraintName("FK_NguoiDoc_User");
        });

        modelBuilder.Entity<NhaXb>(entity =>
        {
            entity.HasKey(e => e.MaNxb).HasName("PK__NhaXB__3A19482C6311DCCC");

            entity.ToTable("NhaXB");

            entity.Property(e => e.MaNxb)
                .HasMaxLength(50)
                .HasColumnName("MaNXB");
            entity.Property(e => e.DiaChi).HasMaxLength(50);
            entity.Property(e => e.DienThoai).HasMaxLength(50);
            entity.Property(e => e.TenNxb)
                .HasMaxLength(50)
                .HasColumnName("TenNXB");
        });

        modelBuilder.Entity<NhanVien>(entity =>
        {
            entity.HasKey(e => e.MaNhanVien).HasName("PK__NhanVien__77B2CA47138E8BAF");

            entity.ToTable("NhanVien");

            entity.Property(e => e.MaNhanVien).HasMaxLength(50);
            entity.Property(e => e.CaLam).HasMaxLength(50);
            entity.Property(e => e.DiaChi).HasMaxLength(50);
            entity.Property(e => e.GioiTinh).HasMaxLength(50);
            entity.Property(e => e.Que).HasMaxLength(50);
            entity.Property(e => e.Sdt)
                .HasMaxLength(50)
                .HasColumnName("SDT");
            entity.Property(e => e.TenNhanVien).HasMaxLength(50);
            entity.Property(e => e.Username).HasMaxLength(50);

            entity.HasOne(d => d.UsernameNavigation).WithMany(p => p.NhanViens)
                .HasForeignKey(d => d.Username)
                .HasConstraintName("FK_NhanVien_User");
        });

        modelBuilder.Entity<PhieuMuon>(entity =>
        {
            entity.HasKey(e => e.MaHoSoMuon).HasName("PK__PhieuMuo__C657EA34E1453DE9");

            entity.ToTable("PhieuMuon");

            entity.Property(e => e.MaHoSoMuon).HasMaxLength(50);
            entity.Property(e => e.MaHoSotra).HasMaxLength(50);
            entity.Property(e => e.MaNguoiDoc).HasMaxLength(50);
            entity.Property(e => e.MaNhanVien).HasMaxLength(50);
            entity.Property(e => e.NgayMuon).HasColumnType("date");
            entity.Property(e => e.ThơiGianCho).HasColumnType("datetime");
            entity.Property(e => e.TinhTrang).HasMaxLength(50);

            entity.HasOne(d => d.MaHoSotraNavigation).WithMany(p => p.PhieuMuons)
                .HasForeignKey(d => d.MaHoSotra)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__PhieuMuon__MaHoS__534D60F1");

            entity.HasOne(d => d.MaNguoiDocNavigation).WithMany(p => p.PhieuMuons)
                .HasForeignKey(d => d.MaNguoiDoc)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_PhieuMuon_NguoiDoc");

            entity.HasOne(d => d.MaNhanVienNavigation).WithMany(p => p.PhieuMuons)
                .HasForeignKey(d => d.MaNhanVien)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__PhieuMuon__MaNha__5441852A");
        });

        modelBuilder.Entity<Sach>(entity =>
        {
            entity.HasKey(e => e.MaSach).HasName("PK__Sach__B235742DA0BF0890");

            entity.ToTable("Sach");

            entity.Property(e => e.MaSach).HasMaxLength(50);
            entity.Property(e => e.MaNgonNgu).HasMaxLength(50);
            entity.Property(e => e.MaNxb)
                .HasMaxLength(50)
                .HasColumnName("MaNXB");
            entity.Property(e => e.MaTheLoai).HasMaxLength(50);
            entity.Property(e => e.NamXb)
                .HasMaxLength(50)
                .HasColumnName("NamXB");
            entity.Property(e => e.TacGia).HasMaxLength(50);
            entity.Property(e => e.TenSach).HasMaxLength(50);
            entity.Property(e => e.TinhTrangSach).HasMaxLength(50);

            entity.HasOne(d => d.MaNgonNguNavigation).WithMany(p => p.Saches)
                .HasForeignKey(d => d.MaNgonNgu)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Sach__MaNgonNgu__4AB81AF0");

            entity.HasOne(d => d.MaNxbNavigation).WithMany(p => p.Saches)
                .HasForeignKey(d => d.MaNxb)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Sach__MaNXB__48CFD27E");

            entity.HasOne(d => d.MaTheLoaiNavigation).WithMany(p => p.Saches)
                .HasForeignKey(d => d.MaTheLoai)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Sach__MaTheLoai__49C3F6B7");
        });

        modelBuilder.Entity<TheLoai>(entity =>
        {
            entity.HasKey(e => e.MaTheLoai).HasName("PK__TheLoai__D73FF34A1E741A0A");

            entity.ToTable("TheLoai");

            entity.Property(e => e.MaTheLoai).HasMaxLength(50);
            entity.Property(e => e.TenTheLoai).HasMaxLength(50);
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Username);

            entity.ToTable("User");

            entity.Property(e => e.Username).HasMaxLength(50);
            entity.Property(e => e.EmailDk)
                .HasMaxLength(50)
                .HasColumnName("EmailDK");
            entity.Property(e => e.LoaiUser).HasMaxLength(50);
            entity.Property(e => e.Password).HasMaxLength(50);
        });

        modelBuilder.Entity<ViTriSach>(entity =>
        {
            entity.HasKey(e => e.MaSach).HasName("PK__Ke__8582FBBE67250FFE");

            entity.ToTable("ViTriSach");

            entity.Property(e => e.MaSach).HasMaxLength(50);
            entity.Property(e => e.Hang).HasMaxLength(50);
            entity.Property(e => e.Ke)
                .HasMaxLength(10)
                .IsFixedLength();

            entity.HasOne(d => d.MaSachNavigation).WithOne(p => p.ViTriSach)
                .HasForeignKey<ViTriSach>(d => d.MaSach)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ViTriSach_Sach");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
