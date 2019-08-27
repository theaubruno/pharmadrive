import Highcharts from 'highcharts';

// var Highcharts = require('highcharts');

// Load module after Highcharts is loaded
require('highcharts/modules/exporting')(Highcharts);

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
            data: [1, 0, 4]
          }, {
            name: 'John',
            data: [5, 7, 3]
          }]
        });
