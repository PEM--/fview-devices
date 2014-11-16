@smartphoneSvgWidth = 20.46875
@smartphoneSvgHeight = 32.25
svgRatio = smartphoneSvgWidth / smartphoneSvgHeight
svgScreenWidth = 14.75211
svgScreenHeight = 23.529547
svgScreenX = 2.856971
svgScreenY = 3.6170185

Template.smartphoneSvg.rendered = ->
  fview = FView.fromTemplate @
  smartphoneMod = fview.children[0].modifier
  screenMod = fview.children[0].children[1].modifier
  screenSurf = fview.children[0].children[1].children[0].view
  perspective = if @data.perspective? then @data.perspective else 0
  screenSurf.context.setPerspective perspective
  if @data.clip? and @data.clip
    screenSurf.setProperties overflow: 'hidden'
  width = if @data.width? then @data.width else 500
  smartphoneMod.setSize [width, width/svgRatio]
  screenMod.setProportions [
    svgScreenWidth / smartphoneSvgWidth
    svgScreenHeight / smartphoneSvgHeight
  ]
  align = [
    svgScreenX / smartphoneSvgWidth
    svgScreenY / smartphoneSvgHeight
  ]
  screenMod.setAlign align
