const imdb = require('imdb-api');


apiKey = '2014b1b8';

// imdb.search({
//   title: 'Place beyond'
// }, {apiKey}).then(console.log).catch(console.log);  


imdb.get('Fishing with John', {apiKey}
  ).then(things => {
    things.episodes().then(console.log);
});