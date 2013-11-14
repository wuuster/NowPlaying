//
// NowPlaying.h
// Now Playing Cordova Plugin Version 2
// Created by Koiwu Beyan on 11/14/2013.
// MIT Licensed
//

#import <Cordova/CDVPlugin.h>
#import <MediaPlayer/MediaPlayer.h>


@interface NowPlaying : CDVPlugin {
}
- (void) updateMetas:(CDVInvokedUrlCommand*)command;

@end
