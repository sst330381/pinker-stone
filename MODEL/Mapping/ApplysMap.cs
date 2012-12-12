using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FluentNHibernate.Mapping;

namespace MODEL.Mapping
{
    public class ApplysMap:ClassMap<Applys>
    {
        public ApplysMap()
        {
            Id(x => x.ID);
            References<Route>(x => x.Route);
            References<User>(x => x.Applicant);
        }
    }
}
