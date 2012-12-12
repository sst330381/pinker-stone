﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODEL;
using NHibernate;

namespace DAL
{
    public class DALRoute:Helper.DALBase
    {
        public void CreateRoute(Route route)
        {
            session.Save(route);
            session.Flush();
        }

        public IList<Route> GetRoute()
        {
            IQuery query = session.CreateQuery("from Route r ");
            IList<Route> routes = query.Future<Route>().ToList();
            return routes;
        }
    }
}