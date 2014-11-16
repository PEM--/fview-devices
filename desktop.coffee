@svgWidth = 71.215572
@svgHeight = 43.5061
svgRatio = svgWidth / svgHeight
svgScreenWidth = 51.557697
svgScreenHeight = 29.363539
svgScreenX = 9.8544369
svgScreenY = 4.5855823

FView.ready ->
  FView.attrEvalAllowedKeys = '*'

Template.desktopSvg.rendered = ->
  console.log @
  fview = FView.fromTemplate @
  desktopMod = fview.children[0].modifier
  screenMod = fview.children[0].children[1].modifier
  width = if @data.width? then @data.width else 500
  desktopMod.setSize [width, width/svgRatio]
  screenMod.setProportions [
    svgScreenWidth / svgWidth
    svgScreenHeight / svgHeight
  ]
  align = [
    svgScreenX / svgWidth
    svgScreenY / svgHeight
  ]
  screenMod.setAlign align
