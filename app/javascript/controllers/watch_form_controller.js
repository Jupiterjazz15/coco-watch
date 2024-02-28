import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="watch-form"
export default class extends Controller {
  static values = {
    error: { type: Boolean, default: false }
  }

  connect() {
    if (this.errorValue) {
      var myModal = new bootstrap.Modal(this.element, {})
      myModal.show()
    }
  }
}
