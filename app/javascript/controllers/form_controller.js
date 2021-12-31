import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {

  change(event) {
    event.preventDefault()

    if (event.target.value.length == 0) {
      event.target.classList.add('border-red-700')
      event.target.parentElement.insertAdjacentHTML('beforeend', '<div id="required" class="text-red-700">This field is required</div>')
    }

    if (event.target.value.length > 0)
      event.target.classList.remove('border-red-700')
  }

  focus(event) {
    event.preventDefault()
    event.target.classList.remove('border-red-700')

    if (document.getElementById('required'))
      event.target.parentElement.removeChild(document.getElementById('required'))
  }

  focusout(event) {
    event.preventDefault()

    if (event.target.value.length == 0) {
      event.target.classList.add('border-red-700')
      event.target.parentElement.insertAdjacentHTML('beforeend', '<div id="required" class="text-red-700">This field is required</div>')
    }

    if (event.target.value.length > 0)
      event.target.classList.remove('border-red-700')

  }
}
