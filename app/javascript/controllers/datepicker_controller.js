import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  static targets = [ "startTime", "endTime" ]

  connect() {
    console.log("hello");
    flatpickr(this.startTimeTarget, {})
    flatpickr(this.endTimeTarget, {})
  }
}
