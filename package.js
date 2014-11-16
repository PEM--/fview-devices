Package.describe({
  name: 'pierreeric:fview-devices',
  summary: 'Display device in a surface for Meteor\'s famous-views.',
  version: '0.1.0',
  git: 'https://github.com/PEM--/fview-devices'
});

Package.onUse(function(api) {
  api.versionsFrom('1.0');
  api.use('mjn:famous@0.3.1_2', 'client', { weak: true });
  api.use('raix:famono@0.9.16', { weak: true });
  api.use([
    'templating@1.0.5',
    'mquandalle:jade@0.2.9',
    'gadicohen:famous-views@0.1.25',
    'pierreeric:cssc@1.0.3',
    'pierreeric:cssc-normalize@1.0.1',
    'pierreeric:cssc-famous@1.0.1',
    'pierreeric:cssc-colors@1.0.3'
  ], 'client');

  api.addFiles('desktop.jade', 'client');

});
