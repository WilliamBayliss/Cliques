import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  clearInputs() {
    this.element.reset();
  }
}
