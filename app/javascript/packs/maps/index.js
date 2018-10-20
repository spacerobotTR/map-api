document.addEventListener("turbolinks:load", function() {

  var map = new GMaps({
    div: '#map',
    lat: 43.036302641877,
    lng: -76.1308899542609,
    gestureHandling: 'greedy'
  });
  window.map = map;

  var incidents = JSON.parse(document.querySelector("#map").dataset.incidents);
  window.incidents = incidents;

  incidents.forEach(function(incident) {
    if (incident.latitude && incident.longitude) {
      var marker = map.addMarker({
        lat: incident.latitude,
        lng: incident.longitude,
        title: incident.address,
        infoWindow: {
          content: `<p><a href='/incidents/${incident.id}'>${incident.address}</a></p>
                    <p><a href='/incidents/${incident.id}'>${incident.drnum}</a></p>`
        }
      });
    }
  });

});
