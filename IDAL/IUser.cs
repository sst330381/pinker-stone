using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODEL;

namespace IDAL
{
    public interface IUser
    {
        void SaveUpdate(MODEL.User User);
    }
}
