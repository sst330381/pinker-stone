using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NHibernate;
using MODEL;

namespace DAL
{
    public class DALExpress : Helper.DALBase
    {
        public void CreateExpress(ExpressInfo express)
        {
            session.Save(express);
            session.Flush();
        }

        public MODEL.ExpressInfo GetExpress(string username)
        {
            IQuery query = session.CreateQuery("from ExpressInfo e where e.UserName='" + username + "'");
            ExpressInfo express = query.FutureValue<ExpressInfo>().Value;
            return express;
        }
    }
}
