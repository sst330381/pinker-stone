using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class ApplyRelationship
    {
        public virtual Guid ID { get; set; }
        public virtual Route Route { get; set; }//路线
        public virtual User Applicant { get; set; }//申请人
    }
}
