import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  static targets = [ "startTime", "endTime" ]

  connect() {
    flatpickr(this.startTimeTarget, { minDate: "today", altFormat: "F j, Y" });
    flatpickr(this.endTimeTarget, { minDate: "today", altFormat: "F j, Y" });
  }
}
