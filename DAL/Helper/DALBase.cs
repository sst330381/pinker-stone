using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NHibernate;

namespace DAL.Helper
{
    public class DALBase
    {
        public ISession session = new HybridSessionBuilder().GetSession();
    }
}
