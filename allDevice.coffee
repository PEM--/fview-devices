@desktop =
  main:
    width: 71.215572
    height: 43.5061
  screen:
    width: 51.557697
    height: 29.363539
    X: 9.8544369
    Y: 4.5855823

@smartphone =
  main:
    width: 20.46875
    height: 32.25
  screen:
    width: 14.75211
    height: 23.529547
    X: 2.856971
    Y: 3.6170185

@tablet =
  main:
    width: 33.94285
    height: 49.571767
  screen:
    width: 25.007973
    height: 36.581028
    X: 4.4674511
    Y: 5.580843

setModifier = (that, device) ->
  fview = FView.fromTemplate that
  svgRatio = device.main.width / device.main.height
  deviceMod = fview.children[0].modifier
  screenMod = fview.children[0].children[1].modifier
  screenSurf = fview.children[0].children[1].children[0].view
  perspective = if that.data.perspective? then that.data.perspective else 0
  screenSurf.context.setPerspective perspective
  if that.data.clip? and that.data.clip
    screenSurf.setProperties overflow: 'hidden'
  width = if that.data.width? then that.data.width else 500
  deviceMod.setSize [width, width/svgRatio]
  screenMod.setProportions [
    device.screen.width / device.main.width
    device.screen.height / device.main.height
  ]
  align = [
    device.screen.X / device.main.width
    device.screen.Y / device.main.height
  ]
  screenMod.setAlign align

Template.smartphoneSvg.rendered = -> setModifier @, smartphone

Template.desktopSvg.rendered = -> setModifier @, desktop

Template.tabletSvg.rendered = -> setModifier @, tablet
