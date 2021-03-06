﻿using System;
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

            Map(x => x.Name);
            Map(x => x.Password);
            Map(x => x.RealName);

            Map(x => x.Gender);
            Map(x => x.Telphone);
            Map(x => x.Credit);
            Map(x => x.Email);
            Map(x => x.CreateTime);
            Map(x => x.LastLoginTime);

            Map(x => x.Avatar);
            Map(x => x.Openid);
            Map(x => x.Opentype).CustomType<int>();
        }
    }
}
