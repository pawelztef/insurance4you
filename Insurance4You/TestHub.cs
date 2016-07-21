using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using Insurance4You.Logic;
using Newtonsoft.Json;
using Microsoft.AspNet.SignalR.Hubs;
using Newtonsoft.Json;

namespace Insurance4You
{
   
    public class TestHub : Hub
    {

        


        public void Send2(string message)
        {

            Clients.All.getmsg(message);
            
        }
    }
}