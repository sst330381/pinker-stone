using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class ApplyRelationship
    {
        public Guid ID { get; set; }
        public Route Route { get; set; }//路线
        public User Applicant { get; set; }//申请人
    }
}
