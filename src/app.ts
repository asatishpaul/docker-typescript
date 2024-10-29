import express, { Application, Request, Response } from 'express';

// Create an Express application
const app: Application = express();

// Middleware to parse JSON
app.use(express.json());

// Example route
app.get('/', (req: Request, res: Response) => {
  res.status(200).send('Hello, World!');
});

// Export the app for use in other files
export default app;
