import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="watch-form"
export default class extends Controller {
  static targets = ["form", "modalBody"]

  connect() {
    if (this.errorValue) {
      var myModal = new bootstrap.Modal(this.element, {})
      myModal.show()
    }
  }

  submit(event) {
    event.preventDefault()
    const url = this.formTarget.action
    const options = {
      method: this.formTarget.method,
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    }

    fetch(url, options)
      .then(response => response.json())
      .then((data) => {
        this.modalBodyTarget.innerHTML = data.html
      })
  }
}
