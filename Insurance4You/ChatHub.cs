using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.Identity;
using Insurance4You.Logic;
using Newtonsoft.Json;
using System.Web.Providers.Entities;
using System.Web.Security;

namespace Insurance4You
{
    public class ChatHub : Hub
    {
        public static bool roomState = false;

        public void Send(string message, string groupName)
        {
            Clients.Group(groupName).broadcastMessage(message, groupName, Context.User.Identity.Name);
        }

        //roomName based on user name
        public Task CreateConversation(string groupName)
        {
            return Groups.Add(Context.ConnectionId, groupName);
        }

        public Task DestroyConversation(string userName)
        {
            return Groups.Remove(Context.ConnectionId, userName);
        }

        public void StartConversation(string groupName)
        {
            Clients.Group(groupName).startChat();
        }

        public void FinishConversation(string groupName)
        {
            Clients.Group(groupName).finishChat();
        }

        public void JoinRoom()
        {
            if (!Context.User.IsInRole("owner"))
            {
                string name = Context.User.Identity.Name;
                string id = Context.User.Identity.GetUserId();
                string conId = Context.ConnectionId;
                ChatRoom.JoinRoom(conId, id, name);
            }
            var joined = ChatRoom.GetJoined();
            string serList = JsonConvert.SerializeObject(joined);
            string message = ChatRoom.CalculateTime();
            Clients.All.joined(serList);
            Clients.All.timeInQueue(message);
           
        }

        public void LeaveRoom()
        {
            string conId = Context.ConnectionId;
            string name = Context.User.Identity.Name;
            ChatRoom.LeaveRoom(conId, name);
            var joined = ChatRoom.GetJoined();
            var serList = JsonConvert.SerializeObject(joined);
            string message = ChatRoom.CalculateTime();
            Clients.All.left(serList);
            Clients.All.timeInQueue(message);
        }

        public void RemoveFromRoom(string userName, string con)
        {
            string conId = con;
            string name = userName;
            ChatRoom.LeaveRoom(conId, name);
            var joined = ChatRoom.GetJoined();
            var serList = JsonConvert.SerializeObject(joined);
            string message = ChatRoom.CalculateTime();
            Clients.All.left(serList);
            Clients.All.timeInQueue(message);
        }

        public void OpenRoom()
        {
            roomState = true;
            Clients.All.RoomState(true);
        }
       
        public void CloseRoom()
        {
            roomState = false;
            ChatRoom.ClearRoom();
            var joined = ChatRoom.GetJoined();
            var serList = JsonConvert.SerializeObject(joined);
            Clients.All.RoomState(false);
            Clients.All.left(serList);
        }

        public void CheckIsRoomOpen()
        {
            Clients.All.RoomState(roomState);
        }

        public void WaitingTime()
        {
            string message = ChatRoom.CalculateTime();
            Clients.All.timeInQueue(message);
        }



    }
}