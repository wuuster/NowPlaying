//
//  NowPlaying.js
//	Now Playing Cordova Plugin
//	Update by Koiwu Beyan
//	Created by François LASSERRE on 12/05/13.
//	Copyright 2013 François LASSERRE. All rights reserved.
//  MIT Licensed
//
(function(){

	var cordovaRef = window.PhoneGap || window.Cordova || window.cordova; // old to new fallbacks
	
	var NowPlaying = function() {};
	
	/**
	 * Update metadatas.
	 */
	NowPlaying.prototype.updateMetas = function(artist,title,album) {
		cordovaRef.exec(null, null, "NowPlaying", "updateMetas", [artist,title,album]);
	};
	
	cordovaRef.addConstructor(function(){
		if (!window.plugins) {
			window.plugins = {};
		}
		window.plugins.nowPlaying = new NowPlaying();
	});
	
})();
