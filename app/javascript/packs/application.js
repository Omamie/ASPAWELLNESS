import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
// import { initStimulus } from '../plugins/init_stimulus.js';
import { Application } from 'stimulus'
import { definitionsFromContext } from 'stimulus/webpack-helpers'
import { Autocomplete } from 'stimulus-autocomplete'
import { initStarRating } from '../plugins/init_star_rating';


const application = Application.start()

// const context = require.context('autocomplete', true, /.js$/)
// application.load(definitionsFromContext(context))

application.register('autocomplete', Autocomplete)


import "../plugins/flatpickr"

import { initMapbox } from '../plugins/init_mapbox';
import { flatpickr } from "../plugins/flatpickr";


initMapbox();
initStarRating();


