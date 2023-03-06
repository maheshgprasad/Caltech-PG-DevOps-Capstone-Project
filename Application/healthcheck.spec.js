describe('Healthcheck', () => {

	it('returns 200 if server is healthy', async () => {
		const res = await get(`/health`, null)
			.expect(200);
		expect(res.body.uptime).toBeGreaterThan(0);
	});

});