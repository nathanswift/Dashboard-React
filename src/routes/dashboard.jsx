import Dashboard from "views/Dashboard/Dashboard";
import UserProfile from "views/UserProfile/UserProfile";
import TableList from "views/TableList/TableList";
import Typography from "views/Typography/Typography";
import Icons from "views/Icons/Icons";
import Notifications from "views/Notifications/Notifications";
import Messages from "views/Messages/Messages"
import Calendar from 'views/Calendar/Calendar'
import Payments from 'views/Payments/Payments'

const dashboardRoutes = [
  {
    path: "/dashboard",
    name: "Dashboard",
    icon: "pe-7s-graph",
    component: Dashboard
  },
  {
    path: "/user",
    name: "User Profile",
    icon: "pe-7s-user",
    component: UserProfile
  },
  {
    path: "/table",
    name: "Task Board",
    icon: "pe-7s-note2",
    component: TableList
  },
  {
    path: "/messages",
    name: "Messages",
    icon: "pe-7s-mail-open-file",
    component: Messages
  },
  {
    path: "/calendar",
    name: "Calendar",
    icon: "pe-7s-date",
    component: Calendar
  },
  {
    path: "/payments",
    name: "Payments",
    icon: "pe-7s-credit",
    component: Payments
  },
  {
    path: "/typography",
    name: "Typography",
    icon: "pe-7s-news-paper",
    component: Typography
  },
  { path: "/icons", name: "Icons", icon: "pe-7s-science", component: Icons },
  {
    path: "/notifications",
    name: "Notifications",
    icon: "pe-7s-bell",
    component: Notifications
  },
  { redirect: true, path: "/", to: "/dashboard", name: "Dashboard" }
];

export default dashboardRoutes;
