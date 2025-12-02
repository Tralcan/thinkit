/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./index.html",
        "./politicas.html",
        "./soporte.html",
        "./**/*.html"
    ],
    theme: {
        extend: {
            fontFamily: {
                sans: ['Inter', 'sans-serif'],
            },
            colors: {
                'blue-900': '#1e3a8a',
                'blue-600': '#2563eb',
            },
        },
    },
    plugins: [],
}
