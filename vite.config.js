import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: true, // Needed for Docker container port mapping
    strictPort: true,
    port: 5173, // Or your desired port
    watch: {
      usePolling: true, // Important for file change detection in Docker
    },
  },
})
