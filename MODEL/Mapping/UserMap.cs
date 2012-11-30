using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FluentNHibernate.Mapping;

namespace MODEL.Mapping
{
    public class UserMap : ClassMap<User>
    {
        public UserMap()
        {
            Id(x => x.ID);
            Map(x => x.MemberID);
            Map(x => x.Name);
            Map(x => x.Password);
        }
    }
}
