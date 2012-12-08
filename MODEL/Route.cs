using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL
{
    public class Route
    {
        public virtual Guid ID { get; set; }
        public virtual string Startpoint { get; set; }//必填
        public virtual string Destination { get; set; }//必填
        public virtual bool Driver { get; set; }//必填
        public virtual PinkerType Pinkertype { get; set; }//必填
        public virtual string Passby { get; set; }
        public virtual string Datetime { get; set; }//必填 出发日期
        public virtual string Shorttime { get; set; }//必填 出发时间
        //public virtual CarType Cartype { get; set; }
        //public virtual Area Area { get; set; }//必填
        public virtual string Remark { get; set; }

        public virtual User PublishUser { get; set; }
        public virtual string ConnectName { get; set; }//必填
        public virtual string ConnectPhone { get; set; }//必填
    }

    public enum PinkerType{
        上下班拼车,
        长途拼车,
        自驾游拼车,
    }

    public enum CarType{
        小型车,
        中型车,
        豪华车,
        SUV,
        面包车,
        其他
    }
}
