css = new CSSC
css
  # Theme for desktop
  .add '.fview-devices-desktop-svg-empty',
    stroke: CSSC.gray
    fill: CSSC.silver
    strokeWidth: .5
  .add '.fview-devices-desktop-svg-filled',
    fill: CSSC.gray

  # Theme for smartphone
  .add '.fview-devices-smartphone-svg-empty',
    stroke: CSSC.black
    fill: CSSC.gray
    strokeWidth: .5
  .add '.fview-devices-smartphone-svg-filled',
    fill: CSSC.black

  # Theme for tablet
  .add '.fview-devices-tablet-svg-empty',
    stroke: CSSC.black
    fill: CSSC.gray
    strokeWidth: .5
  .add '.fview-devices-tablet-svg-filled',
    fill: CSSC.black

  # Responsive SVG value
  .add 'div.fview-device-desktop-container',
    width: CSSC.pc 100
    height: 0
    paddingTop: CSSC.pc 100*desktop.main.height/desktop.main.width
    position: 'relative'
  .add 'div.fview-device-smartphone-container',
    width: CSSC.pc 100
    height: 0
    paddingTop: CSSC.pc 100*smartphone.main.height/smartphone.main.width
    position: 'relative'
  .add 'svg.fview-devices-svg',
    position: 'absolute'
    top: 0
    left: 0
    maxHeight: CSSC.pc 100
