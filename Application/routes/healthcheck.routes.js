var express = require('express');
const router = express.Router({});
router.get('/', async (_req, res, _next) => {
	const healthcheck = {
		uptime: process.uptime(),
		message: 'Active',
		timestamp: Date.now()
	};
	try {
		res.send(healthcheck);
	} catch (e) {
		healthcheck.message = e;
		res.status(503).send();
	}
});
// export router with all routes included
module.exports = router;