# Devices - Desktop, smartphone and tablet surfaces
A plugin for [famous-views](http://famous-views.meteor.com).

This plugin brings devices surfaces in Blaze or Jade templating for [Meteor.js](https://www.meteor.com). Available devices as [famo.us](http://famo.us)'s surfaces are:
* Desktop
* Smartphone
* Tablet

![Desktop](https://raw.githubusercontent.com/PEM--/fview-devices/master/private/doc/clipped.png)
![Smartphone](https://raw.githubusercontent.com/PEM--/fview-devices/master/private/doc/smartphone.png)

## Usage
Starts with the usual and add some packages:
```bash
meteor create mydevices
cd mydevices
mkdir client
meteor add gadicohen:famous-views pierreeric:fview-devices
# From here you can choose your favorite Famo.us provider, mine is Raix's one.
meteor add raix:famono
```

You can choose to write your HTML templates with Blaze or
with [Maxime Quandalle's Jade](https://github.com/mquandalle/meteor-jade).
```bash
meteor add mquandalle:jade
```

And then in `client` directory, call your devices like this:
```jade
+StateModifier id='app' align='[.5, .5]' origin='[.5, .5]' translate='[0,0,100]'
  // For the desktop
  +desktopSvg width=400 perspective=200 clip=true template='demoContent'
  // For the smartphone
  +smartphoneSvg width=150 perspective=200 clip=true template='demoContent'
  // For the tablet
  +tabletSvg width=150 perspective=200 clip=true template='demoContent'

template(name='demoContent')
  +Surface class='test'
    | Screen background
  +StateModifier translate='[0,0,1]'
    +StateModifier align='[.5, .5]' origin='[.5, .5]' size='[50, 50]' transform='eval:Transform.rotateY(Math.PI/4)'
      +DotLoader
        |
```

Available attributes and their defaults are:
* `width`: Widget's width, default 500.
* `perspective`: Perspective of content in the widget's screen, default 0.
* `clip`: Clip content in the screen, default false.

> The `clip` property provides some nice effect. When set to `false`, you can
  create effect where the animations are literally going outside of the screen.
  When set to `true`, the widget makes you really feel that the animation is
  contained within the screen.

  >For illustration purposes, here's an example of an unclipped content:
  ![Unclipped](https://raw.githubusercontent.com/PEM--/fview-devices/master/private/doc/unclipped.png)

## Examples
A basic example is provided in the [Github repository](https://github.com/PEM--/fview-devices).

## Customization
### Themes
A basic theme is provided for a nice display out of the box. You can easily
customize it with CSS, LESS, Stylus or in CoffeeScript using [CSSC](https://github.com/PEM--/cssc/).

Here are the default CSS classes names used on the devices:
```css
.fview-devices-svg-empty {
  stroke: gray
  fill: silver
  stroke-width: .5  
}

.fview-devices-desktop-svg-filled {
  fill: gray
}
```
