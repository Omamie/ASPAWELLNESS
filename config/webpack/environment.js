const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default'],
    fullCalendar: 'fullCalendar'
  })
)

module.exports = environment

environment.loaders.delete('nodeModules');
