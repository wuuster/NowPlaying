//
// NowPlaying.m
// Now Playing Cordova Plugin Version 2
// Created by Koiwu Beyan on 11/14/2013.
//

#import "NowPlaying.h"
#import <MediaPlayer/MediaPlayer.h>
#import <MediaPlayer/MPNowPlayingInfoCenter.h>
#import <MediaPlayer/MPMediaItem.h>
#import <AVFoundation/AVFoundation.h>

@implementation NowPlaying


- (void)updateMetas:(CDVInvokedUrlCommand*)command

{
	
	NSString *artist = [command.arguments objectAtIndex:1];
	NSString *title = [command.arguments objectAtIndex:2];
	NSString *album = [command.arguments objectAtIndex:3];
    
    MPNowPlayingInfoCenter *infoCenter = [MPNowPlayingInfoCenter defaultCenter];
    infoCenter.nowPlayingInfo = [NSDictionary dictionaryWithObjectsAndKeys:
                                 artist, MPMediaItemPropertyArtist,
                                 title, MPMediaItemPropertyTitle,
                                 album, MPMediaItemPropertyAlbumTitle,
                                 [[MPMediaItemArtwork alloc] initWithImage:[UIImage imageNamed:@"albumart.png"]], MPMediaItemPropertyArtwork,
                                 nil];
    
}

@end
