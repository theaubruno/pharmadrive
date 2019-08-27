import "bootstrap";

// SCRIPT POUR LES ORDONNANCES
import "../plugins/chart";


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

// window.addEventListener("DOMContentLoaded", (event) => {
//   // Select pharmacy


//   })

  $('#exampleModal').on('shown.bs.modal', function() {

    // const map = document.querySelector("#map2");
    // map._canvas.width = '1532'
    // map._canvas.height = '1100'
    // map._canvas.style.width = '100%'
    // map._canvas.style.height = '550px'
    // map._canvas.style.top = '0px'
    // map._canvas.style.right = '0px'



    initMapbox2();
    const input = document.getElementById('list_user_id')
    const pharmacies = document.querySelectorAll('.marker-pharmacy')
    const selectpharm = document.getElementById('pharmselect')

    pharmacies.forEach((pharmacy) => {
      pharmacy.addEventListener('click', event => {
        setTimeout(function() {
          const btn = document.querySelector('.superbtn')
          btn.addEventListener('click', event => {
            event.preventDefault();
            input.value = parseInt(btn.dataset.id);
            btn.disabled = 'true'
            selectpharm.insertAdjacentHTML('beforeend', btn.dataset.name);
            selectpharm.insertAdjacentHTML('beforeend', btn.dataset.address);


            document.querySelector('.mapboxgl-popup-close-button').click()
          })
        }, 1);
      });
    });

  });




