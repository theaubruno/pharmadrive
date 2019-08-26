import "bootstrap";
import "../plugins/chart"

if (document.getElementById('newordo')!== null) {
const form = document.getElementById('newordo')
const button = document.getElementById('showfrom')

button.addEventListener("focus", (event) => {
  form.classList.toggle("d-none")
});
};
