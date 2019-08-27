import "bootstrap";
import Swal from 'sweetalert2';
import { drag_drop } from '../plugins/drag_drop.js.erb'

// SCRIPT POUR LES ORDONNANCES
import "../plugins/chart";


drag_drop();

if (document.getElementById('newordo') !== null) {
    let form = document.getElementById('newordo')
    let parentsDrugs = document.getElementById('drugs')

    const button = document.getElementById('showfrom')
    const buttonList = document.getElementById('showfromlist')
    const addPharma = document.querySelector('.opennewordo')
    let count = 0

    button.addEventListener("click", (event) => {
        form.classList.toggle("d-none")
    });


    // form.classList.toggle("d-none")

    const listInCreation = document.querySelector(".list-in-creation");
    const addDrug = document.querySelector(".add-drug");

    addDrug.addEventListener("click", (event) => {


        const inputsforms = document.querySelectorAll('.inputsforms');

        // const inputsformsVisible = document.querySelectorAll('.inputsforms:not(d-none)');



        let verify = document.querySelector(".inputsforms:not(.d-none)");

        if (verify !== undefined) {
        let drugNameInput = document.querySelector(".inputsforms:not(.d-none).one");
        let dosageInput = document.querySelector(".inputsforms:not(.d-none).two");
        let posologyInput = document.querySelector(".inputsforms:not(.d-none).three");
        let quantityInput = document.querySelector(".inputsforms:not(.d-none).four");
        let qspInput = document.querySelector(".inputsforms:not(.d-none).five");
        listInCreation.insertAdjacentHTML('afterbegin',`<div><p>${drugNameInput.value} - ${dosageInput.value} -${posologyInput.value} /j- ${quantityInput.value} boites - ${qspInput.value}</p></div>`);


        };

        count++;

        parentsDrugs.insertAdjacentHTML('beforeend', `
                        <!-- Task:  -->
                        <div class="form-group string optional list_drugs_drug_name"><label class="form-control-label string optional" for="list_drugs_attributes_${count}_drug_name">Drug name</label><input class="form-control string optional inputsforms one" type="text" name="list[drugs_attributes][${count}][drug_name]" id="list_drugs_attributes_${count}_drug_name"></div>
                        <div class="form-group string optional list_drugs_dosage"><label class="form-control-label string optional" for="list_drugs_attributes_${count}_dosage">Dosage</label><input class="form-control string optional inputsforms two" type="text" name="list[drugs_attributes][${count}][dosage]" id="list_drugs_attributes_${count}_dosage"></div>
                        <div class="form-group string optional list_drugs_posology"><label class="form-control-label string optional" for="list_drugs_attributes_${count}_posology">Posology</label><input class="form-control string optional inputsforms three" type="text" name="list[drugs_attributes][${count}][posology]" id="list_drugs_attributes_${count}_posology"></div>
                        <div class="form-group string optional list_drugs_quantity"><label class="form-control-label string optional" for="list_drugs_attributes_${count}_quantity">Quantity</label><input class="form-control string optional inputsforms four" type="text" name="list[drugs_attributes][${count}][quantity]" id="list_drugs_attributes_${count}_quantity"></div>
                        <div class="form-group string optional list_drugs_qsp"><label class="form-control-label string optional" for="list_drugs_attributes_${count}_qsp">Qsp</label><input class="form-control string optional inputsforms five" type="text" name="list[drugs_attributes][${count}][qsp]" id="list_drugs_attributes_${count}_qsp"></div>
                        <div class="links">
                        </div>
                    `);

                inputsforms.forEach((input) => {
          input.classList.add("d-none");
          input.parentElement.classList.add("d-none");



          // input.classList.toggle("d-none");
        });
    });
    // addPharma.addEventListener("click", (event) => {
    //   form.classList.toggle("d-none")
    // });
};

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { initMapbox2 } from '../plugins/init_mapbox2';

initMapbox2();


// Select pharmacy

const input = document.getElementById('list_user_id')
const pharmacies = document.querySelectorAll('.marker-pharmacy')

pharmacies.forEach((pharmacy) => {
  pharmacy.addEventListener('click', event => {
    setTimeout(function() {
      const btn = document.querySelector('.superbtn')
      btn.addEventListener('click', event => {
        event.preventDefault();
        input.value = parseInt(btn.dataset.id);
        btn.disabled = 'true'

        document.querySelector('.mapboxgl-popup-close-button').click()
      })
    }, 1);
  });
})



// const pharmaDelivrate = document.querySelector(".new-employee");
// if (new_employee) {
// new_employee.addEventListener("click", (event) => {
//   Swal.fire({
//     type: 'success',
//     title: '<span style="color:lightgreen"> Selectionner la pharmacie!<span>',
//     width: 1280,
//     html: '<span style="color: white">The onboarding email has been sent<span>',
//     background: 'white',
//     confirmButtonText:'Retourner sur les ordo'
//     }).then(function() {
//        new_employee2();
//        console.log('The Ok Button was clicked.');
//        });
// });
// }

// const new_employee2 = document.querySelector(".new-employee");
// if (new_employee) {
// new_employee.addEventListener("click", (event) => {
//   Swal.fire({
//     type: 'success',
//     title: '<span style="color:lightgreen"> Selectionner la pharmacie!<span>',
//     width: 600,
//     html: '<span style="color: white">The onboarding email has been sent<span>',
//     background: 'white',
//     confirmButtonText:'Retourner sur les ordo'
//     }).then(function() {
//        window.location.reload();
//        console.log('The Ok Button was clicked.');
//        });
// });
// }

//= require jquery
//= require jquery_ujs
//= require sweetalert2
//= require sweet-alert2-rails
import { typedHome } from '../components/typed';
if (window.location.href === "https://ibaybeach.herokuapp.com/" || window.location.href === "http://localhost:3000/" ){
 typedHome();
};
