import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

// Connects to data-controller="typed"
export default class extends Controller {

  static targets = ['first', 'second', 'third']

  static values = {
    sentences: Array,
  }

  connect() {
    const first = this.firstTarget
    const second = this.secondTarget
    const third = this.thirdTarget

    const firstOption = { strings: [this.sentencesValue[0]], typeSpeed: 100, showCursor: false }
    const secondOption = { strings: [this.sentencesValue[1]], typeSpeed: 100, showCursor: false }
    const thirdOption = { strings: [this.sentencesValue[2]], typeSpeed: 100, showCursor: false }


    setTimeout(() => {
      new Typed(first, firstOption)
      setTimeout(() => {
        new Typed(second, secondOption)
        setTimeout(() => {
          new Typed(third, thirdOption)
        }, 2000);
      }, 2000);
    }, 1000);
  }
}
