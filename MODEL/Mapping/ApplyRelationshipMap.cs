using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FluentNHibernate.Mapping;

namespace MODEL.Mapping
{
    public class ApplyRelationshipMap:ClassMap<ApplyRelationship>
    {
        public ApplyRelationshipMap()
        {
            Id(x => x.ID);
            References<Route>(x => x.Route);
            References<User>(x => x.Applicant);
        }
    }
}
