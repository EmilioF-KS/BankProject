import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import nodePolyfills from 'rollup-plugin-node-polyfills';

export default defineConfig({
  plugins: [nodePolyfills()],
  resolve: {
    alias: {
      crypto: 'crypto-browserify',
    },
  },
});


// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
})
