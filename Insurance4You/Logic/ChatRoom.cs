using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Insurance4You.Logic
{
    public static class ChatRoom
    {
        private static List<Interlocutor> Room = new List<Interlocutor>();
        public static bool status = false;
        public static void JoinRoom(string conId, string id, string name)
        {
            Interlocutor user = new Interlocutor();
            user.conId = conId;
            user.id = id;
            user.name = name;
            Room.Add(user);
            
        }

        public static void LeaveRoom(string conId, string name)
        {
          Room.RemoveAll(x=> x.conId==conId && x.name == name);
           
        }

        public static void OpenRoom()
        {
            status = true;
        }

        public static void ClearRoom()
        {
            Room.Clear();
            status = false;
        }

        public static List<Interlocutor> GetJoined()
        {
            return Room;
        }

        public static string CalculateTime()
        {
            int i = Room.Count() * 5;
            return "Approx. waiting time: " + i + " mins.";
        }

    }
}