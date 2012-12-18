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
            Map(x => x.StartLocation);
            Map(x => x.DestLocation);
            Map(x => x.Driver);
            Map(x => x.Pinkertype).CustomType<int>();
            Map(x => x.Godate);
            Map(x => x.Gotime);
            Map(x => x.Backdate);
            Map(x => x.Backtime);
            Map(x => x.Passby1);
            Map(x => x.Passby2);
            Map(x => x.Passby3);
            Map(x => x.Remark);
            Map(x => x.Miles);
            Map(x => x.Price);

            References(x => x.PublishUser).Not.LazyLoad();
            Map(x => x.ConnectName);
            Map(x => x.ConnectPhone);
        }
    }
}