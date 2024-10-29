import request from 'supertest'; // Used for testing HTTP requests
import app from '../src/app';    // Adjust this path to point to your Express app

describe('App Routes', () => {
  it('should return 200 for the home route', async () => {
    const response = await request(app).get('/');
    expect(response.status).toBe(200);
  });
});
