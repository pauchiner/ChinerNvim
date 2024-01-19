/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,ts,tsx}'],
  darkMode: 'class',
  theme: {
    extend: {
      fontFamily: {
        mono: 'JetBrains Mono'
      }
    },
    container: {
      center: true
    },
  },
  plugins: [],
};
