﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class User
    {
        public virtual Guid ID { get; set; }

        public virtual string NickName { get; set; }
        public virtual string Password { get; set; }
        public virtual string RealName { get; set; }
        public virtual bool Gender { get; set; }
        public virtual string Telphone { get; set; }
        public virtual int Credit { get; set; }
        public virtual DateTime RegistTime { get; set; }

        public virtual string Avatar { get; set; }
        public virtual string Openid { get; set; }
        public virtual OpenType Opentype { get; set; }
    }

    public enum OpenType
    {
        localuser,
        qquser,
        sinauser,
        renrenuser
    }
}
