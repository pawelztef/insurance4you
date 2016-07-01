using Insurance4You.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Insurance4You.Logic
{
    public class RoleActions
    {
        public void AddUserAndRole()
        {
            // 1. Access the application context and create result variables.
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;


            // 2. Create a RoleStore object by using the ApplicationDbContext object.
            //    The RoleStore is only allowed to contain IdentityRole objects.
            var roleStore = new RoleStore<IdentityRole>(context);



            // 3. Create a RoleManager object that is only allowed to contain IdentityRole objects.
            //    When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object.
            var roleMgr = new RoleManager<IdentityRole>(roleStore);



            // 4. Then, you create the "owner" role if it doesn't already exists.
            if (!roleMgr.RoleExists("owner"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "owner" });
            }



            // 5. Create a UserManager object based on the UserStore object and the ApplicationDbContext object. Note that you can create new objects
            //    and use them as parameters in a single line of code, rather than usning multiple lines.
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser
            {
                UserName = "owner@owner.com",
                Email = "owner@owner.com",
                EmailConfirmed = true,
            };
            IdUserResult = userMgr.Create(appUser, "password");


            // 6. If the new "owner" user was successfully created, add the "owner" user to the "owner" role.
            if (!userMgr.IsInRole(userMgr.FindByEmail("owner@owner.com").Id, "owner"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("owner@owner.com").Id, "owner");
            }


        }
    }
}