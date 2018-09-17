const ElevationService = require('elevation-service');

const microCors = require('micro-cors');
const cors = microCors();

// This re-exports elevation-service's API that provides the interface that micro requires.
module.exports = cors(ElevationService);
