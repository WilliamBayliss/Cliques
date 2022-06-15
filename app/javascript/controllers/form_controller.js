import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["input"]
    connect() {
      console.log(this.element)
    }
  reset() {

  }
}
