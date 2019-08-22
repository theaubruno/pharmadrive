import "bootstrap";



if (document.getElementById('newordo')!== null) {
const form = document.getElementById('newordo')
const button = document.getElementById('showfrom')

button.addEventListener("focus", (event) => {
  form.classList.toggle("d-none")
});
};

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
