module.exports = {
  theme: {
    extend: {
      screens: {
        xs: '320px',
      }
    }
  },
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js'
  ],
  plugins: [require('@tailwindcss/forms'),]
}
