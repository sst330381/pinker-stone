using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class BLLExpress
    {
        DAL.DALExpress dalexpress = new DAL.DALExpress();

        public void CreateExpress(string username,string content,string timestamp)
        {
            dalexpress.CreateExpress(
                new MODEL.ExpressInfo() { 
                    UserName=username,
                    Content=content,
                    Timestamp=timestamp
                });
        }

        public MODEL.ExpressInfo GetExpress(string username)
        {
            return dalexpress.GetExpress(username);
        }
    }
}
