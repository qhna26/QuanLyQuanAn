using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QuanLyQuanAn
{
    public class HoaDon
    {
        public string MaHD {  get; set; }
        public string MaBan {  get; set; }
        public DateTime NgayLap { get; set; }
        public TimeSpan GioLap { get; set; }
        public string MaNV { get; set; }
        public string MaKH { get; set; }
        public string MaKM { get; set; }
        public decimal TongTien { get; set; }
        public string TrangThai { get; set; }
    }
}
