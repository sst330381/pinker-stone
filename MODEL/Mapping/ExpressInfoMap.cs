using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FluentNHibernate.Mapping;

namespace MODEL.Mapping
{
    public class ExpressInfoMap:ClassMap<ExpressInfo>
    {
        public ExpressInfoMap() {
            Id(x => x.Id);
            Map(x => x.UserName);
            Map(x => x.Content);
            Map(x => x.Timestamp);
        }
    }
}
