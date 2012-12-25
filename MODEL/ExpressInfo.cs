using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class ExpressInfo
    {
        public virtual int Id { get; set; }
        public virtual string UserName { get; set; }
        public virtual string Content { get; set; }
        public virtual string Timestamp { get; set; }
    }
}
