import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {
  static targets = ["element"]

  connect() {
    console.log('Stimuls, FlashController')
  }

  close() {
    this.elementTarget.remove()    
  }
}

