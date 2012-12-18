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

        public void CreateUser(string username, string openid, MODEL.OpenType opentype)
        {
            MODEL.User user = GetUser8Name(username);
            while (user != null)
            {
                username += user + "0";
                user = GetUser8Name(username);
            }
            MODEL.User newuser = new MODEL.User()
            {
                Name = username,
                Openid = openid,
                Opentype = opentype,
                Avatar = "/img/mavatar/M_001.jpg",
                CreateTime=DateTime.Now,
                LastLoginTime=DateTime.Now
            };
            daluser.CreateUser(newuser);
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

        public User GetUesr8Openid(string openid,MODEL.OpenType opentype)
        {
            return daluser.GetUesr8Openid(openid, opentype);
        }
    }
}
