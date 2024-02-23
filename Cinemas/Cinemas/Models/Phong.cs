using System;
using System.Collections.Generic;

namespace Cinemas.Models;

public partial class Phong
{
    public int Idphong { get; set; }

    public string TenPhong { get; set; } = null!;

    public int SoGhe { get; set; }

    public int SoGheTrong { get; set; }

    public virtual ICollection<GhePhong> GhePhongs { get; set; } = new List<GhePhong>();

    public virtual ICollection<HoaDon> HoaDons { get; set; } = new List<HoaDon>();

    public virtual ICollection<LichChieuPhim> LichChieuPhims { get; set; } = new List<LichChieuPhim>();
}
