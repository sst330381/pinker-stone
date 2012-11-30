using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NHibernate;

namespace DAL
{
    public class DALAspMembership:IDAL.IAspMembership
    {
        ISession session = new DAL.Helper.HybridSessionBuilder().GetSession();

        public void CreateUser(MODEL.User user)
        {
            session.Save(user);
        }

        public void UpdateUser(MODEL.User user)
        {
            session.Update(user);
        }

        public bool ValidateUser(string username, string password)
        {
            MODEL.User user = GetUser(username);
            bool result = false;
            result = password == user.Password ? true : false;
            return result;
        }

        public MODEL.User GetUser(Guid providerUserKey)
        {
            IQuery query = session.CreateQuery("select u from User where u.MemberID=" + providerUserKey.ToString());
            MODEL.User user = query.FutureValue<MODEL.User>().Value;
            return user;
        }

        public MODEL.User GetUser(string username)
        {
            IQuery query = session.CreateQuery("select u from User u where u.Name='" + username+"'");
            MODEL.User user = query.FutureValue<MODEL.User>().Value;
            return user;
        }
    }
}
