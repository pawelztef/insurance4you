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

        public void Send(string name, string message)
        {
            Clients.All.broadcastMessage(name, message);
        }

        //roomName based on user name
        public async Task CreateConversation(string conversationName)
        {
            await Groups.Add(Context.ConnectionId, conversationName);

        }

        public void StartConversation(string groupName)
        {
            Clients.Group(groupName).ConversationAvailable();
        }

        public void OpenRoom(bool flag)
        {
            Clients.All.roomOpen(flag);
        }

        public Task DestroyConversation(string roomName)
        {
            return Groups.Remove(Context.ConnectionId, roomName);
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
            var joined = ChatRoom.getJoined();
            string serList = JsonConvert.SerializeObject(joined);
            Clients.All.joined(serList);
        }

        public void LeaveRoom()
        {
            string conId = Context.ConnectionId;
            string id = Context.User.Identity.GetUserId();
            ChatRoom.LeaveRoom(conId, id);
            var joined = ChatRoom.getJoined();
            var serList = JsonConvert.SerializeObject(joined);
            Clients.All.left(serList);
        }

        public void RoomOpen(bool flag)
        {
            roomState = flag;
        }
        public void CheckRoomState()
        {
            Clients.All.isRoomOpen(roomState);
        }
        

        public void Send2(string message)
        {

            Clients.All.getmsg(message);

        }
    }
}