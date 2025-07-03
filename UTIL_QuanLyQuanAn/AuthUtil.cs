using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO_QuanLyQuanAn;


namespace UTIL_QuanLyQuanAn
{
    internal class AuthUtil
    {
        public static NhanVien user = null;
        public static bool IsLogin()
        {
            if (user == null)
            {
                return false;
            }
            if (string.IsNullOrWhiteSpace(user.NhanVienID))
            {
                return false;
            }
            return true;
        }
    }
}

