import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
if (markers.length) {


markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });

} else {

  bounds.extend([ markers.lng, markers.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });

}



};



const addMarkersToMap = (map, markers) => {

if (markers.length) {

    markers.forEach((marker) => {

  const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

  // Create a HTML element for your custom marker
  const element = document.createElement('div');
  element.className = 'marker';
  element.style.backgroundImage = `url('${marker.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '50px';
  element.style.height = '50px';
  // Pass the element as an argument to the new marker
  new mapboxgl.Marker(element)
    .setLngLat([marker.lng, marker.lat])
    .setPopup(popup)
    .addTo(map);
});


} else {
  const popup = new mapboxgl.Popup().setHTML(markers.infoWindow);

  // Create a HTML element for your custom marker
  const element = document.createElement('div');
  element.className = 'marker-red';
  element.style.backgroundImage = `url('${markers.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '50px';
  element.style.height = '50px';
  // Pass the element as an argument to the new marker
  new mapboxgl.Marker(element)
    .setLngLat([markers.lng, markers.lat])
    .setPopup(popup)
    .addTo(map);


}



};

const initMapbox = () => {
const mapElement = document.getElementById('map');




  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
  const markers = JSON.parse(mapElement.dataset.markers);

  const geocoder = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    mapboxgl: mapboxgl
  })

  map.addControl(geocoder);
  fitMapToMarkers(map, markers);
  addMarkersToMap(map, markers);
  citySearch(geocoder);


  // test
  const cards = document.querySelectorAll(".treatment-card")
  if (cards) {
    cards.forEach((card) => {

      card.addEventListener("click", (event) => {
        console.log(event.target.dataset.lat);
        console.log(event.target.dataset.lng);
        let marker = { lat: event.target.dataset.lat, lng: event.target.dataset.lng  }

        const del_marker = document.querySelector(".lol");
        if (del_marker) {
        del_marker.remove();
        }

        const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = "url('https://i.imgur.com/G7quCQx.png')";
        element.style.backgroundSize = 'contain';
        element.style.width = '50px';
        element.style.height = '50px';

        element.classList.add("lol");
        console.log(element);
        // class to remove the marker => marker mapboxgl-marker mapboxgl-marker-anchor-center
        // element.style.border = "dashed";
        // Pass the element as an argument to the new marker
        new mapboxgl.Marker(element)
          .setLngLat([marker.lng, marker.lat])
          // .setPopup(popup)
          .addTo(map);

          map.flyTo({
          center: [
            marker.lng,
            marker.lat
          ],
          essential: true // this animation is considered essential with respect to prefers-reduced-motion
          });
          });

      });
    };
  // test
  }
};

const citySearch = (geocoder) => {
var url_string = window.location.href
var url = new URL(url_string);
var c = url.searchParams.get("address");

var d = c.split(",")
var e = d[0]

geocoder.query(e);
}




export { initMapbox };
