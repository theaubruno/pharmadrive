import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox2 = () => {
  const mapElement = document.getElementById('map2');

  const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map2',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);



    const el = document.createElement('div');
    // if (marker.role === 'doctor') {
    //   el.className = 'marker-doctor';
    // } else {
      el.className = 'marker-pharmacy';
    // }
    new mapboxgl.Marker(el)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  });
  fitMapToMarkers(map, markers);
  map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
  }


};

export { initMapbox2 };
