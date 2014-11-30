css = new CSSC
css
.add '.test', backgroundColor: CSSC.blue
.add '.label', textAlign: 'center'
.add '.dotloader-background',
  backgroundColor: CSSC.navy
  borderRadius: CSSC.px 5
.add '.dotloader-dots', backgroundColor: CSSC.aqua
.add '.surf3d',
  backfaceVisibility: 'visible'
  backgroundColor: CSSC.navy
  borderRadius: CSSC.px 5
  color: CSSC.aqua
  fontSize: CSSC.px 60
  lineHeight: CSSC.px 100
  fontWeight: 'bolder'
  textAlign: 'center'
.add ['p', 'pre'], margin: 0, padding: 0
.add 'pre', fontSize: CSSC.px 11
.add '.fview-devices-smartphone-svg-empty',
  stroke: CSSC.maroon
  fill: CSSC.fuchsia
  strokeWidth: .5
.add '.fview-devices-smartphone-svg-filled',
  fill: CSSC.maroon

Engine = null
Session.set 'rot', 45

FView.ready -> Engine = famous.core.Engine

Template.demofull.helpers
  getRot: -> Session.get 'rot'

Template.demofull.rendered = ->
  Engine.on 'prerender', -> Session.set 'rot', 1 + Session.get 'rot'
