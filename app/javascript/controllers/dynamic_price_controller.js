import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dynamic-price"
export default class extends Controller {
  static targets = ["start", "end", "price"]
  static values = {
    price: Number
  }

  connect() {
    console.log(this.priceValue);
  }

  updatePrice() {
    if (this.startTarget.value && this.endTarget.value) {
      const startDate = new Date(this.startTarget.value)
      const endDate = new Date(this.endTarget.value)
      const differenceInTime = endDate.getTime() - startDate.getTime();
      const differenceInDays = differenceInTime / (1000 * 3600 * 24);
      const totalPrice = differenceInDays * this.priceValue;
      this.displayPrice(totalPrice)
    }
  }

  displayPrice(price) {
    this.priceTarget.innerText = `$${price}`
    this.priceTarget.classList.remove('d-none')
  }
}
