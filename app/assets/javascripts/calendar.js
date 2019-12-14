const element = document.getElementById('calendar');

if (element) {
  const events = JSON.parse(element.dataset.events)
  console.log(events)

  $('#calendar').fullCalendar({
    events: events,
    defaultView: 'listWeek'

  });
}




var updateEvent;

$(document).ready(function() {
  var todayDate = new Date();
  todayDate.setHours(0,0,0,0);

  $('#calendar').fullCalendar({
    editable: true,
    slotEventOverlap: false,
    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'Dicember'],
    monthNamesShort: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dic'],
    dayNames: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
    dayNamesShort: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    columnFormat: {
      month: 'dddd',
      week: 'dddd d',
      day: 'ddd'
    },
    buttonText: {
      today: 'Today',
      month: 'month',
      week: 'week',
      day: 'day'
    },
    minTime: "08:00:00",
    maxTime: "19:00:00",
    header: {
      left: 'prev,next today',
      center: 'title',
      right: ''
    },

    height: 500,
    eventSources: [
      {
        url: '/events'
      }
    ],
    timeFormat: 'h:mm t{ - h:mm t} ',
    dragOpacity: "0.5"
  });
});
