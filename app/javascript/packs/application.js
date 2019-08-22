import "bootstrap";



if (document.getElementById('newordo')!== null) {
let form = document.getElementById('newordo')

const button = document.getElementById('showfrom')
const buttonList = document.getElementById('showfromlist')
const addPharma = document.querySelector('.opennewordo')
let count = 0

button.addEventListener("click", (event) => {
  form.classList.toggle("d-none")
});

buttonList.addEventListener("click", (event) => {
  count ++;
  form.innerHTML = `


            <form novalidate="novalidate" class="simple_form list" action="/doctor/patients/1/lists" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="Pi2z0OgmQxvxiWBv+gWl/eVbC/2sceL9OcoswS+s4+uuAMlvN1QYmS3STMd4xA/iPMJLzxTzQLyND0h8+AwfYg==">
              <div class="new-drug">

                    <div class="form-group string optional list_drug_drug_name"><label class="form-control-label string optional" for="list_drug_drug_name">Nom du médicament</label><input class="form-control string optional" type="text" name="list[drug][drug_name]" id="list_drug_drug_name${count}"></div>
                    <div class="form-group string optional list_drug_dosage"><label class="form-control-label string optional" for="list_drug_dosage">Dosage</label><input class="form-control string optional" type="text" name="list[drug][dosage]" id="list_drug_dosage${count}"></div>
                    <div class="form-group string optional list_drug_posology"><label class="form-control-label string optional" for="list_drug_posology">Posologie</label><input class="form-control string optional" type="text" name="list[drug][posology]" id="list_drug_posology${count}"></div>
                    <div class="form-group string optional list_drug_quantity"><label class="form-control-label string optional" for="list_drug_quantity">Quantité</label><input class="form-control string optional" type="text" name="list[drug][quantity]" id="list_drug_quantity${count}"></div>
                    <div class="form-group string optional list_drug_qsp"><label class="form-control-label string optional" for="list_drug_qsp">QSP</label><input class="form-control string optional" type="text" name="list[drug][qsp]" id="list_drug_qsp${count}"></div>
              </div>
              <div class="">

              <a href="/doctor/patients/1?class=far+fa-plus-circle+font05+"> Ajouter une prescription</a>
              </div>

              <button type="button" class="btn btn-success color-white add-drug" data-toggle="modal" data-target="#exampleModal" id="book${count}">
                Choisir la Pharmacie
              </button>


              <input type="submit" name="commit" value="Save List" class="btn opennewordo" data-disable-with="Save List">
</form>          `;
  // form.classList.toggle("d-none")
});


addPharma.addEventListener("click", (event) => {
  form.classList.toggle("d-none")
});
};



