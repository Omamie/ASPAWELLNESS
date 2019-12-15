import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

flatpickr(".datepicker", {
  altInput: true,
  enableTime: false,
  minDate: "today"
});

flatpickr(".timepicker", {
  enableTime: true,
  noCalendar: true
});
