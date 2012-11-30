using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class BLLUser
    {
        IDAL.IUser daluser = new DAL.DALUser();
        public void SaveUpdate(MODEL.User user)
        {
            daluser.SaveUpdate(user);
        }
    }
}
