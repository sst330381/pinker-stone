using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FluentNHibernate.Mapping;

namespace MODEL.Mapping
{
    public class RouteMap : ClassMap<Route>
    {
        public RouteMap()
        {
            Id(x => x.ID);
            Map(x => x.Startpoint);
            Map(x => x.Destination);
            Map(x => x.Driver);
            Map(x => x.Pinkertype).CustomType<int>();
            Map(x => x.Passby);
            Map(x => x.Datetime);
            Map(x => x.Shorttime);
            Map(x => x.Remark);

            References(x => x.PublishUser);
            Map(x => x.ConnectName);
            Map(x => x.ConnectPhone);
        }
    }
}