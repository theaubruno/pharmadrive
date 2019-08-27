import Highcharts from 'highcharts';

// var Highcharts = require('highcharts');

// Load module after Highcharts is loaded
require('highcharts/modules/exporting')(Highcharts);




if (document.getElementById('chart') !== null){
  const chart = document.querySelector("#chart").dataset.average
  const daily = document.querySelector("#chart").dataset.daily
  var myChart = Highcharts.chart('chart', {
          title: {
            text: 'Temps de préparation moyen'
          },
          xAxis: {
            tickInterval: 24 * 3600 * 1000, // one week
              tickWidth: 0,
        gridLineWidth: 1,
          },
          yAxis: {
            title: {
              text: 'Durée'
            }
          },
          series: [{
            name: 'Depuis toujours',
            data: [parseInt(chart)]
          }, {
            name: "Aujourd'hui",
            data: [parseInt(daily)]
          }]
        });
};

if (document.getElementById('chart1') !== null){
  const patients = document.querySelector("#chart1").dataset.daily2
  const alltime = document.querySelector("#chart1").dataset.alltime
  var myChart = Highcharts.chart('chart1', {
          title: {
            text: 'Nombre de patients en moyenne'
          },
          xAxis: {
            tickInterval: 24 * 3600 * 1000, // one week
              tickWidth: 0,
        gridLineWidth: 1,
          },
          yAxis: {
            title: {
              text: 'Durée'
            }
          },
          series: [{
            name: 'Depuis toujours',
            data: [parseInt(alltime)]
          }, {
            name: "Aujourd'hui",
            data: [parseInt(patients)]
          }]
        });
};
