import dotenv from 'dotenv';
import express from 'express';
import authRoutes from './routes/authRoutes';
import empleadoRoutes from './routes/empleadoRoutes';
import productoRoutes from './routes/productoRoutes';
import categoriaRoutes from './routes/categoriaRoutes';
import corsMiddleware from './config/cors'

dotenv.config()

const app = express()

app.use(express.json())

// Configura CORS
app.use(corsMiddleware);

// Routes
app.use('/api', authRoutes)
app.use('/api', empleadoRoutes)
app.use('/api', productoRoutes)
app.use('/api', categoriaRoutes)

export default app;