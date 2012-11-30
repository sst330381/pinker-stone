using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
    public class DALUser : DAL.Helper.DALBase, IDAL.IUser
    {
        public void SaveUpdate(MODEL.User User)
        {
            session.Save(User);
        }
    }
}
