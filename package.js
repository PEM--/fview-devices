Package.describe({
  name: 'pierreeric:fview-devices',
  summary: ' /* Fill me in! */ ',
  version: '1.0.0',
  git: ' /* Fill me in! */ '
});

Package.onUse(function(api) {
  api.versionsFrom('1.0');
  api.addFiles('pierreeric:fview-devices.js');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('pierreeric:fview-devices');
  api.addFiles('pierreeric:fview-devices-tests.js');
});
