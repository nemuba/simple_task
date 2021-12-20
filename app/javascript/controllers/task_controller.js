import { Controller } from "@hotwired/stimulus"
import { FetchRequest } from "@rails/request.js"
// Connects to data-controller="task"
export default class extends Controller {
  update() {
    this.element.parentElement.requestSubmit()
  }
}
