NowPlaying V2
==========

PhoneGap / Cordova iOS plugin that allows you to add metadatas in NowPlayingInfoCenter (MPNowPlayingInfoCenter) to your app

Require
-------

- Phonegap 3.0 and IOS 7

Installation
------------

Add the plugin much like any other:

1. Add MediaPlayer.framework in your project.
2. Add the NowPlaying.h and NowPlaying.m classes to your Plugins folder in Xcode
3. Add the NowPlaying.js file to your www folder
4. Add the NowPlaying.js to your html file. eg: `<script type="text/javascript" charset="utf-8" src="NowPlaying.js"></script>`
5. Add the plugin to your config.xml: `<plugin name="NowPlaying" value="NowPlaying" />` (or if you are running an older version of PhoneGap / Cordova, Cordova.plist under Plugins (key: "NowPlaying" value: "NowPlaying"))

### Example
```javascript
function onDeviceReady() {
  var nowPlaying = window.plugins.nowPlaying;
  artist = "Daft Punk";
  title = "One More Time";
  album = "Discovery";
  nowPlaying.updateMetas(artist,title,station);
}
```

