using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODEL;

namespace BLL
{
    public class BLLUser
    {
        DAL.DALUser daluser = new DAL.DALUser();

        public void CreateUser(User user)
        {
            daluser.CreateUser(user);
        }

        public void UpdateUser(User user)
        {
            daluser.UpdateUser(user);
        }

        public void UpdateUserLogintime(string username)
        {
            var user = GetUser8Name(username);
            user.LastLoginTime = DateTime.Now;
            UpdateUser(user);
        }

        public bool ValidateUser(string username, string password)
        {
            return daluser.ValidateUser(username, password);
        }

        public User GetUser8Id(Guid providerUserKey)
        {
            return daluser.GetUser8Id(providerUserKey);
        }

        public User GetUser8Name(string username)
        {
            return daluser.GetUser8Name(username);
        }

        public User GetUser8Email(string email)
        {
            return daluser.GetUser8Email(email);
        }
    }
}
