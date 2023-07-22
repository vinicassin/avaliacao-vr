const { defineConfig } = require("cypress");

module.exports = defineConfig({
  viewportWidth: 1920,
  viewportHeight:1080,
  reporter: 'mochawesome',
  reporterOptions: {
    reportDir: 'cypress/report/mochawesome-report',
    overwrite: true,
    html: true,
    json: false,
    timestamp: 'mmddyyyy_HHMMss'
  },
  e2e: {
    baseUrl: "https://vr.com.br/",
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
});
