using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Security;

namespace BLL
{
    public class AspMembershipProvider : MembershipProvider
    {
        private DAL.DALUser imem;
        public DAL.DALUser IMem
        {
            get
            {
                if (imem == null)
                {
                    imem = new DAL.DALUser();
                }
                return imem;
            }
            set
            {
                imem = value;
            }
        }

        public override string ApplicationName
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public override bool ChangePassword(string username, string oldPassword, string newPassword)
        {
            var user = IMem.GetUser8Name(username);
            if (user.Password == oldPassword)
            {
                user.Password = newPassword;
                IMem.UpdateUser(user);
                return true;
            }
            else
            {
                return false;
            }
        }

        public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
        {
            throw new NotImplementedException();
        }

        public override MembershipUser CreateUser(string username, string password, string email, string passwordQuestion, string passwordAnswer, bool isApproved, object providerUserKey, out MembershipCreateStatus status)
        {
            var exsit=GetUser(username,true);

            var user = new MODEL.User()
            {
                Name = username,
                Password = password,
                Opentype = MODEL.OpenType.localuser,
                CreateTime = DateTime.Now,
                LastLoginTime = DateTime.Now
            };
            IMem.CreateUser(user);
            MembershipUser mu = new MembershipUser("memProvider",
                username, user.ID, email, "", "", true, true, DateTime.Now, DateTime.Now, DateTime.Now, DateTime.Now, DateTime.Now);
            status = MembershipCreateStatus.Success;
            return mu;
        }

        public override bool DeleteUser(string username, bool deleteAllRelatedData)
        {
            var user = IMem.GetUser8Name(username);
            user.Frozen = true;
            IMem.UpdateUser(user);
            return true;
        }

        public override bool EnablePasswordReset
        {
            get { throw new NotImplementedException(); }
        }

        public override bool EnablePasswordRetrieval
        {
            get { throw new NotImplementedException(); }
        }

        public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
        {
            throw new NotImplementedException();
        }

        public override int GetNumberOfUsersOnline()
        {
            throw new NotImplementedException();
        }

        public override string GetPassword(string username, string answer)
        {
            throw new NotImplementedException();
        }

        public override MembershipUser GetUser(string username, bool userIsOnline)
        {
            MODEL.User user = IMem.GetUser8Name(username);
            if (user == null) return null;
            MembershipUser mu = new MembershipUser("memProvider",
                 username, user.ID,user.Email,string.Empty, string.Empty,
                 true, true, user.CreateTime,
                 DateTime.Now, DateTime.Now, DateTime.Now, DateTime.Now);
            return mu;
        }

        public override MembershipUser GetUser(object providerUserKey, bool userIsOnline)
        {
            var user = IMem.GetUser8Id((Guid)providerUserKey);
            if (user == null) return null;
            MembershipUser mu = new MembershipUser("memProvider", user.Name,
                user.ID, user.Email, string.Empty, string.Empty, true, true, user.CreateTime, DateTime.Now,
                DateTime.Now, DateTime.Now, DateTime.Now);
            return mu;
        }

        public override string GetUserNameByEmail(string email)
        {
            throw new NotImplementedException();
        }

        public override int MaxInvalidPasswordAttempts
        {
            get { throw new NotImplementedException(); }
        }

        public override int MinRequiredNonAlphanumericCharacters
        {
            get { throw new NotImplementedException(); }
        }

        public override int MinRequiredPasswordLength
        {
            get { return 3; }
        }

        public override int PasswordAttemptWindow
        {
            get { throw new NotImplementedException(); }
        }

        public override MembershipPasswordFormat PasswordFormat
        {
            get { throw new NotImplementedException(); }
        }

        public override string PasswordStrengthRegularExpression
        {
            get { throw new NotImplementedException(); }
        }

        public override bool RequiresQuestionAndAnswer
        {
            get { return false; }
        }

        public override bool RequiresUniqueEmail
        {
            get { throw new NotImplementedException(); }
        }

        public override string ResetPassword(string username, string answer)
        {
            throw new NotImplementedException();
        }

        public override bool UnlockUser(string userName)
        {
            throw new NotImplementedException();
        }

        public override void UpdateUser(MembershipUser user)
        {
            throw new NotImplementedException();
        }

        public override bool ValidateUser(string username, string password)
        {
            MODEL.User user = IMem.GetUser8Name(username);
            if (user == null)
                return false;
            else
                return user.Password == password;
        }
    }
}
