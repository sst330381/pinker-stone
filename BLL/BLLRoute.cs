using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODEL;
using DAL;

namespace BLL
{
    public class BLLRoute
    {
        DALRoute dalroute = new DALRoute();

        public void CreateRoute(User publisher, string type1, string type2, string start,
            string desti, string startlocation, string destlocation, string selectshort, string datetimeother, string datetimelong, string dphour,
            string dpminutes, string pb1, string pb2, string pb3, string appendtxt, string conname, string conphone,string miles)
        {

            //如果是车主
            if (type1 == "host" && type2 == "short")
            {
                var route = new Route()
                {
                    PublishUser = publisher,
                    Driver = true,
                    Pinkertype = PinkerType.上下班拼车,
                    Startpoint = start,
                    Destination = desti,
                    StartLocation = startlocation ?? "",
                    DestLocation = destlocation ?? "",
                    Godate = selectshort == "其他" ? datetimeother : selectshort,
                    Gotime = dphour + ":" + dpminutes,
                    Backdate = null,
                    Backtime = null,
                    Passby1 = pb1,
                    Passby2 = pb2,
                    Passby3 = pb3,
                    Remark = appendtxt,
                    ConnectName = conname,
                    ConnectPhone = conphone,
                    Miles=miles
                };
                dalroute.CreateRoute(route);
                return;
            }
            if (type1 == "host" && type2 == "long")
            {
                var route = new Route()
                {
                    PublishUser = publisher,
                    Driver = true,
                    Pinkertype = PinkerType.长途拼车,
                    Startpoint = start,
                    Destination = desti,
                    StartLocation = startlocation ?? "",
                    DestLocation = destlocation ?? "",
                    Godate = datetimelong,
                    Gotime = dphour + ":" + dpminutes,
                    Backdate = null,
                    Backtime = null,
                    Passby1 = pb1,
                    Passby2 = pb2,
                    Passby3 = pb3,
                    Remark = appendtxt,
                    ConnectName = conname,
                    ConnectPhone = conphone,
                    Miles = miles
                };
                dalroute.CreateRoute(route);
            }
            if (type1 == "host" && type2 == "self")
            {
                var route = new Route()
                {
                    PublishUser = publisher,
                    Driver = true,
                    Pinkertype = PinkerType.自驾游拼车,
                    Startpoint = start,
                    Destination = desti,
                    StartLocation = startlocation ?? "",
                    DestLocation = destlocation ?? "",
                    Godate = datetimelong,
                    Gotime = dphour + ":" + dpminutes,
                    Backdate = null,
                    Backtime = null,
                    Passby1 = pb1,
                    Passby2 = pb2,
                    Passby3 = pb3,
                    Remark = appendtxt,
                    ConnectName = conname,
                    ConnectPhone = conphone,
                    Miles = miles
                };
                dalroute.CreateRoute(route);
                return;
            }

            //如果是拼客
            if (type1 == "pinker" && type2 == "short")
            {
                var route = new Route()
                {
                    PublishUser = publisher,
                    Driver = false,
                    Pinkertype = PinkerType.上下班拼车,
                    Startpoint = start,
                    Destination = desti,
                    StartLocation = startlocation ?? "",
                    DestLocation = destlocation ?? "",
                    Godate = selectshort == "其他" ? datetimeother : selectshort,
                    Gotime = dphour + ":" + dpminutes,
                    Backdate = null,
                    Backtime = null,
                    Remark = appendtxt,
                    ConnectName = conname,
                    ConnectPhone = conphone,
                    Miles = miles
                };
                dalroute.CreateRoute(route);
                return;
            }
            if (type1 == "pinker" && type2 == "long")
            {
                var route = new Route()
                {
                    PublishUser = publisher,
                    Driver = false,
                    Pinkertype = PinkerType.长途拼车,
                    Startpoint = start,
                    Destination = desti,
                    StartLocation = startlocation ?? "",
                    DestLocation = destlocation ?? "",
                    Godate = datetimelong,
                    Gotime = dphour + ":" + dpminutes,
                    Backdate = null,
                    Backtime = null,
                    Remark = appendtxt,
                    ConnectName = conname,
                    ConnectPhone = conphone,
                    Miles = miles
                };
                dalroute.CreateRoute(route);
                return;
            }
            if (type1 == "pinker" && type2 == "self")
            {
                var route = new Route()
                {
                    PublishUser = publisher,
                    Driver = false,
                    Pinkertype = PinkerType.上下班拼车,
                    Startpoint = start,
                    Destination = desti,
                    StartLocation = startlocation ?? "",
                    DestLocation = destlocation ?? "",
                    Godate = datetimelong,
                    Gotime = dphour + ":" + dpminutes,
                    Backdate = null,
                    Backtime = null,
                    Remark = appendtxt,
                    ConnectName = conname,
                    ConnectPhone = conphone,
                    Miles = miles
                };
                dalroute.CreateRoute(route);
                return;
            }

        }

        public IList<Route> GetRoute(MODEL.PinkerType pinkerType,bool finddriver,string start,string dest)
        {
            return dalroute.GetRoute(pinkerType,finddriver,start,dest);
        }

        public Route GetRoute(Guid guid)
        {
            return dalroute.GetRoute(guid);
        }
    }
}
