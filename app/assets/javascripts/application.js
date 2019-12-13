//= require jquery3
//= require rails-ujs
//= require moment
//= require fullcalendar
//= require_tree .

$('#calendar').fullCalendar({
  events: [
    {
      title  : 'event1',
      start  : '2019-01-01'
    },
    {
      title  : 'event2',
      start  : '2019-01-05',
      end    : '2019-01-07'
    },
    {
      title  : 'event3',
      start  : '2019-01-09T12:30:00',
      allDay : false // will make the time show
    }
  ]
});

