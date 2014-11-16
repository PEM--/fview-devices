@desktopSvgWidth = 71.215572
@desktopSvgHeight = 43.5061
svgRatio = desktopSvgWidth / desktopSvgHeight
svgScreenWidth = 51.557697
svgScreenHeight = 29.363539
svgScreenX = 9.8544369
svgScreenY = 4.5855823

FView.ready ->
  FView.attrEvalAllowedKeys = '*'

Template.desktopSvg.rendered = ->
  fview = FView.fromTemplate @
  console.log fview
  desktopMod = fview.children[0].modifier
  screenMod = fview.children[0].children[1].modifier
  screenSurf = fview.children[0].children[1].children[0].view
  perspective = if @data.perspective? then @data.perspective else 0
  screenSurf.context.setPerspective perspective
  if @data.clip? and @data.clip
    screenSurf.setProperties overflow: 'hidden'
  width = if @data.width? then @data.width else 500
  desktopMod.setSize [width, width/svgRatio]
  screenMod.setProportions [
    svgScreenWidth / desktopSvgWidth
    svgScreenHeight / desktopSvgHeight
  ]
  align = [
    svgScreenX / desktopSvgWidth
    svgScreenY / desktopSvgHeight
  ]
  screenMod.setAlign align
