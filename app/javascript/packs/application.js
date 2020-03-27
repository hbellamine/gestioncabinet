import "bootstrap";
import flatpickr from "flatpickr"
import 'flatpickr/dist/flatpickr.min.css'


flatpickr(".datepicker", {
defaultDate: ["20-10-1984"],
  dateFormat: "d-m-Y",

});

$("tr[data-link]").click(function() {
  window.location = $(this).data("link")
})
