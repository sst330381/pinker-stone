using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class User
    {
        public virtual int ID { get; set; }
        public virtual Guid MemberID { get; set; }
        public virtual string Name { get; set; }
        public virtual string Password { get; set; }
    }
}
