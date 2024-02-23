using System;
using System.Collections.Generic;

namespace Cinemas.Models;

public partial class KhachHang
{
    public int Idkh { get; set; }

    public int Idaccount { get; set; }

    public string TenKh { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Sdt { get; set; } = null!;

    public DateTime NgaySinh { get; set; }

    public bool GioiTinh { get; set; }

    public string DiaChi { get; set; } = null!;

    public virtual ICollection<HoaDon> HoaDons { get; set; } = new List<HoaDon>();

    public virtual Account IdaccountNavigation { get; set; } = null!;
}
