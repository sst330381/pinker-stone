using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODEL;
using NHibernate;

namespace DAL
{
    public class DALUser : DAL.Helper.DALBase
    {
        public void CreateUser(User user)
        {
            session.Save(user);
            session.Flush();
        }

        public void UpdateUser(User user)
        {
            session.Update(user);
            session.Flush();
        }

        public bool ValidateUser(string username, string password)
        {
            MODEL.User user = GetUser8Name(username);
            if (user == null) return false;
            return password == user.Password ? true : false;
        }

        public User GetUser8Id(Guid providerUserKey)
        {
            IQuery query = session.CreateQuery("select u from User u where u.ID='" + providerUserKey.ToString() + "'");
            MODEL.User user = query.FutureValue<MODEL.User>().Value;
            return user;
        }

        public User GetUser8Name(string username)
        {
            IQuery query = session.CreateQuery("select u from User u where u.Name='" + username + "'");
            MODEL.User user = query.FutureValue<MODEL.User>().Value;
            return user;
        }

        public User GetUser8Email(string email)
        {
            IQuery query = session.CreateQuery("select u from User u where u.Email='" + email + "'");
            MODEL.User user = query.FutureValue<MODEL.User>().Value;
            return user;
        }
    }
}
