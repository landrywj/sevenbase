import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="messages"
export default class extends Controller {
  static targets = ["container", "input_form"];
  connect() {
    console.log(this.containerTarget);
    this.resetScroll();
  
    this.containerTarget.addEventListener("DOMNodeInserted", () => {
      this.resetScroll();
      console.log("inserted");
      this.resetForm();
      console.log("form reset");
    });
  }

  resetScroll() {
    // scroll to the bottom of the page
  //   this.containerTarget.scrollBottom = this.containerTarget.scrollHeight;
  window.scrollTo(0, document.body.scrollHeight);
}


  resetForm() {
    this.input_formTarget.reset();
    document.getElementById("message_body").focus();
  }
}
