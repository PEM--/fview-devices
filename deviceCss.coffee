css = new CSSC
css
  .add '.fview-devices-desktop-svg-empty',
    stroke: CSSC.gray
    fill: CSSC.silver
    strokeWidth: .5
  .add '.fview-devices-desktop-svg-filled',
    fill: CSSC.gray
  .add 'div.fview-device-desktop-container',
    width: CSSC.pc 100
    height: 0
    paddingTop: CSSC.pc 100*desktopSvgHeight/desktopSvgWidth
    position: 'relative'
  .add 'div.fview-device-smartphone-container',
    width: CSSC.pc 100
    height: 0
    paddingTop: CSSC.pc 100*smartphoneSvgHeight/smartphoneSvgWidth
    position: 'relative'
  .add 'svg.fview-devices-svg',
    position: 'absolute'
    top: 0
    left: 0
    maxHeight: CSSC.pc 100

console.log smartphoneSvgHeight, 'x', smartphoneSvgWidth
