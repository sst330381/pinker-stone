using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODEL;

namespace IDAL
{
    public interface IAspMembership
    {
        void CreateUser(MODEL.User user);
        bool ValidateUser(string username, string password);
        void UpdateUser(User user);
        User GetUser(Guid providerUserKey);
        User GetUser(string username);
    }
}
