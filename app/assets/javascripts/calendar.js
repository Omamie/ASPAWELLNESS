
$( document ).ready(function() {
// var todayDate = new Date();
//   todayDate.setHours(0,0,0,0);

//   $('#calendar').fullCalendar({
//     editable: false,
//     slotEventOverlap: false,
//     monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'Dicember'],
//      monthNamesShort: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dic'],
//      dayNames: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
//      dayNamesShort: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
//     columnFormat: {
//       month: 'dddd',
//       week: 'dddd d',
//       day: 'ddd'
//     },
//     buttonText: {
//       today: 'Hoy',
//       month: 'month',
//       week: 'week',
//       day: 'day'
//     },
//     minTime: "08:00:00",
//     maxTime: "23:00:00",
//     header: {
//       left: 'prev,next today',
//       center: 'title',
//       right: ''
//     },
//     firstDay: 1,
//     //this section is triggered when the event cell it's clicked
//     selectable: true,
//     selectHelper: true,
//     select: function(start, end) {
//       var description;
//       description = prompt("Description: ");
//       var eventData;
//       //this validates that the user must insert a name in the input
//       if (description) {
//         eventData = {
//           title: "Reserved",
//           start: start,
//           end: end,
//           description: description
//         };
//         //here i validate that the user can't create an event before today
//         if (eventData.start < todayDate){
//           alert("You can't choose a date that already past.");
//           $("#calendar").fullCalendar("unselect");
//           return
//         }
//         //if everything it's ok, then the event is saved in database with ajax
//         $.ajax({
//           url: "events",
//           type: "POST",
//           data: eventData,
//           dataType: 'json',
//           success: function(json) {
//             alert(json.msg);
//             $("#calendar").fullCalendar("renderEvent", eventData, true);
//             $("#calendar").fullCalendar("refetchEvents");
//           }
//         });
//       }
//       $("#calendar").fullCalendar("unselect");
//     },
//     defaultView: 'agendaWeek',
//     allDaySlot: false,
//     height: 500,
//     slotMinutes: 30,
//     eventSources: [
//       {
//         url: '/events'
//       }
//     ],
//     timeFormat: 'h:mm t{ - h:mm t} ',
//     dragOpacity: "0.5"
//   });

const element = document.getElementById('calendar');
const month = document.querySelector('.month');
const  week = document.querySelector('.week');
const day = document.querySelector('.day');

if (element) {
  const events = JSON.parse(element.dataset.events)
  console.log(events);

  let c = $('#calendar').fullCalendar({
    events: events
  });

  console.log(c.fullCalendar("getView"));

  month.addEventListener("click", () => {
     c.fullCalendar('changeView', 'month');
  });

  week.addEventListener("click", () => {
      c.fullCalendar('changeView', 'listWeek');
  });

  day.addEventListener("click", () => {
    c.fullCalendar('changeView', 'agendaDay');
  });
}
});
















































































































// const change = (events) => {
//   const options = {
//     defaultView: 'listWeek'
//   }
//   c.fullCalendar(options);
// };










// var updateEvent;

// $(document).ready(function() {
//   var todayDate = new Date();
//   todayDate.setHours(0,0,0,0);

//   $('#calendar').fullCalendar({
//     editable: true,
//     slotEventOverlap: false,
//     monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'Dicember'],
//     monthNamesShort: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dic'],
//     dayNames: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
//     dayNamesShort: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
//     columnFormat: {
//       month: 'dddd',
//       week: 'dddd d',
//       day: 'ddd'
//     },
//     buttonText: {
//       today: 'Today',
//       month: 'month',
//       week: 'week',
//       day: 'day'
//     },
//     minTime: "08:00:00",
//     maxTime: "19:00:00",
//     header: {
//       left: 'prev,next today',
//       center: 'title',
//       right: ''
//     },

//     height: 500,
//     eventSources: [
//       {
//         url: '/events'
//       }
//     ],
//     timeFormat: 'h:mm t{ - h:mm t} ',
//     dragOpacity: "0.5"
//   });
// });























// var updateEvent;

// $(document).ready(function() {

// };

















