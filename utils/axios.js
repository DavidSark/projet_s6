import axios from 'axios';

export const client = axios.create({
    baseURL: import.meta.env.VITE_API_URL
})

const API_URL = 'http://localhost:3001';
