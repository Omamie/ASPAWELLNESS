const element = document.getElementById('calendar');

if (element) {
  const events = JSON.parse(element.dataset.events)
  console.log(events)

  $('#calendar').fullCalendar({
    events: events
  });
}
