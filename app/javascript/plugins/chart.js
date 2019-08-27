import Highcharts from 'highcharts';

// var Highcharts = require('highcharts');

// Load module after Highcharts is loaded
require('highcharts/modules/exporting')(Highcharts);




if (document.getElementById('chart') !== null){
  const chart = document.querySelector("#chart").dataset.average
  const daily = document.querySelector("#chart").dataset.daily
  var myChart = Highcharts.chart('chart', {
          title: {
            text: 'Fruit Consumption'
          },
          xAxis: {
            tickInterval: 24 * 3600 * 1000, // one week
              tickWidth: 0,
        gridLineWidth: 1,
          },
          yAxis: {
            title: {
              text: 'Fruit eaten'
            }
          },
          series: [{
            name: 'Jane',
            data: [parseInt(chart)]
          }, {
            name: 'John',
            data: [parseInt(daily)]
          }]
        });
};
