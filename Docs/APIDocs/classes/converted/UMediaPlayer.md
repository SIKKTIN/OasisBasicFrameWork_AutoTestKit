# UMediaPlayer

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMediaPlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaPlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaPlayer](https://developer.gp.qq.com/api/#/searchContent/UMediaPlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaPlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaPlayer)

类

全文搜索

Implements a media player asset that can play movies and other media sources.

---


## 函数

- **CanPause**(Check whether media playback can be paused right now. Playback can be paused if the media supports pausing and if it is currently playing. return -true if pausing playback can be paused, false otherwise.)
- **CanPlaySource**(UMediaSource *MediaSource) — Check whether the specified media source can be played by this player. If a desired player name is set for this player, it will only check whether that particular player type can play the specified source. return -true if the media source can be opened, false otherwise. params MediaSource -The media
- **CanPlayUrl**(FString &Url) — Check whether the specified URL can be played by this player. If a desired player name is set for this player, it will only check whether that particular player type can play the specified URL. params Url -The URL to check.
- **Close**(Close the currently open media, if any.)
- **GetAudioTrackChannels**(int32 TrackIndex, int32FormatIndex) — Get the number of channels in the specified audio track. return -Number of channels. params TrackIndex -Index of the audio track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **GetAudioTrackSampleRate**(int32 TrackIndex, int32FormatIndex) — Get the sample rate of the specified audio track. return -Samples per second. params TrackIndex -Index of the audio track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **StringGetAudioTrackType**(int32 TrackIndex, int32FormatIndex) — Get the type of the specified audio track format. return -Audio format type string. params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **NameGetDesiredPlayerName**(Get the name of the current desired native player. return -The name of the desired player, or NAME_None if not set.)
- **TimespanGetDuration**(Get the media's duration. return -A time span representing the duration.)
- **GetHorizontalFieldOfView**(Get the current horizontal field of view (only for 360 videos). return -Horizontal field of view (in Euler degrees).)
- **TextGetMediaName**(Get the human readable name of the currently loaded media source. return -Media source name, or empty text if no media is opened)
- **GetNumTracks**(EMediaPlayerTrackTrackType) — Get the number of tracks of the given type. return -Number of tracks. params TrackType -The type of media tracks.
- **GetNumTrackFormats**(EMediaPlayerTrack TrackType, int32TrackIndex) — Get the number of formats of the specified track. return -Number of formats. params TrackType -The type of media tracks. params TrackIndex -The index of the track.
- **NameGetPlayerName**(Get the name of the current native media player. return -Player name, or NAME_None if not available.)
- **GetPlaylist**(Get the current play list. Media players always have a valid play list. In C++ code you can use the GetPlaylistRef to get a reference instead of a pointer to it. return -The play list.)
- **GetPlaylistIndex**(Get the current play list index. return -Play list index.)
- **GetRate**(Get the media's current playback rate. return -The playback rate.)
- **GetSelectedTrack**(EMediaPlayerTrackTrackType) — Get the index of the currently selected track of the given type. return -The index of the selected track, or INDEX_NONE if no track is active. params TrackType -The type of track to get.
- **GetSupportedRates**(TArray < FFloatRange >& OutRates, boolUnthinned) — Get the supported playback rates. params Unthinned -Whether the rates are for unthinned playback.
- **TimespanGetTime**(Get the media's current playback time. return -Playback time.)
- **TextGetTrackDisplayName**(EMediaPlayerTrack TrackType, int32TrackIndex) — Get the human readable name of the specified track. return -Display name. params TrackType -The type of track. params TrackIndex -The index of the track, or INDEX_NONE for the selected one.
- **GetTrackFormat**(EMediaPlayerTrack TrackType, int32TrackIndex) — Get the index of the active format of the specified track type. return -The index of the selected format. params TrackType -The type of track. params TrackIndex -The index of the track, or INDEX_NONE for the selected one.
- **StringGetTrackLanguage**(EMediaPlayerTrack TrackType, int32TrackIndex) — Get the language tag of the specified track. return -Language tag, i.e. "en-US" for English, or "und" for undefined. params TrackType -The type of track. params TrackIndex -The index of the track, or INDEX_NONE for the selected one.
- **GetUrl**(Get the URL of the currently loaded media, if any. return -Media URL, or empty string if no media was loaded.)
- **GetVerticalFieldOfView**(Get the current vertical field of view (only for 360 videos). return -Vertical field of view (in Euler degrees), or 0.0 if not available.)
- **GetVideoTrackAspectRatio**(int32 TrackIndex, int32FormatIndex) — Get the aspect ratio of the specified video track. return -Aspect ratio. params TrackIndex -Index of the video track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **IntPointGetVideoTrackDimensions**(int32 TrackIndex, int32FormatIndex) — Get the current dimensions of the specified video track. return -Video dimensions (in pixels). params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **GetVideoTrackFrameRate**(int32 TrackIndex, int32FormatIndex) — Get the frame rate of the specified video track. return -Frame rate (in frames per second). params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **FloatRangeGetVideoTrackFrameRates**(int32 TrackIndex, int32FormatIndex) — Get the supported range of frame rates of the specified video track. return -Frame rate range (in frames per second). params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **StringGetVideoTrackType**(int32 TrackIndex, int32FormatIndex) — Get the type of the specified video track format. return -Video format type string. params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **RotatorGetViewRotation**(Get the current view rotation (only for 360 videos). return -View rotation, or zero rotator if not available.)
- **HasError**(Check whether the player is in an error state. When the player is in an error state, no further operations are possible. The current media must be closed, and a new media source must be opened before the player can be used again. Errors are usually caused by faulty media files or interrupted network)
- **IsBuffering**(Check whether playback is buffering data. return -true if looping, false otherwise.)
- **IsConnecting**(Check whether the player is currently connecting to a media source. return -true if connecting, false otherwise.)
- **IsLooping**(Check whether playback is looping. return -true if looping, false otherwise.)
- **IsPaused**(Check whether playback is currently paused. return -true if playback is paused, false otherwise.)
- **IsPlaying**(Check whether playback has started. return -true if playback has started, false otherwise.)
- **IsPreparing**(Check whether the media is currently opening or buffering. return -true if playback is being prepared, false otherwise.)
- **IsReady**(Check whether media is ready for playback. A player is ready for playback if it has a media source opened that finished preparing and is not in an error state. return -true if media is ready, false otherwise.)
- **Next**(Open the next item in the current play list. The player will start playing the new media source if it was playing something previously, otherwise it will only open the media source. return -true on success, false otherwise.)
- **OpenFile**(FString &FilePath) — Opens the specified media file path. A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the
- **OpenPlaylist**(UMediaPlaylist *InPlaylist) — Open the first media source in the specified play list. return -true if the source will be opened, false otherwise. params InPlaylist -The play list to open.
- **OpenPlaylistIndex**(UMediaPlaylist* InPlaylist, int32Index) — Open a particular media source in the specified play list. return -true if the source will be opened, false otherwise. params InPlaylist -The play list to open. params Index -The index of the source to open.
- **OpenSource**(UMediaSource *MediaSource) — Open the specified media source. A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the medi
- **OpenUrl**(FString &Url) — Opens the specified media URL. A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the media
- **Pause**(Pauses media playback. This is the same as setting the playback rate to 0.0. return -true if playback is being paused, false otherwise.)
- **Play**(Starts media playback. This is the same as setting the playback rate to 1.0. return -true if playback is starting, false otherwise.)
- **Previous**(Open the previous item in the current play list. The player will start playing the new media source if it was playing something previously, otherwise it will only open the media source. return -true on success, false otherwise.)
- **Reopen**(Reopens the currently opened media or play list. return -true if the media will be opened, false otherwise.)
- **Rewind**(Rewinds the media to the beginning. This is the same as seeking to zero time. return -true if rewinding, false otherwise.)
- **Seek**(FTimespan &Time) — Seeks to the specified playback time. return -true on success, false otherwise. params Time -The playback time to set.
- **SelectTrack**(EMediaPlayerTrack TrackType, int32TrackIndex) — Select the active track of the given type. The selected track will use its currently active format. Active formats will be remembered on a per track basis. The first available format is active by default. To switch the track format, use SetTrackFormat instead. return -true if the track was selected,
- **SetDesiredPlayerName**(FNamePlayerName) — Set the name of the desired native player. params PlayerName -The name of the player to set.
- **SetLooping**(boolLooping) — Enables or disables playback looping. return -true on success, false otherwise. params Looping -Whether playback should be looped.
- **SetRate**(floatRate) — Changes the media's playback rate. return -true on success, false otherwise. params Rate -The playback rate to set.
- **SetNativeVolume**(floatVolume) — Set the volume on the native player if not mixing with Sound Wave asset. The SetNativeVolume can be used to change the audio output volume at runtime. Note that not all media player plug-ins may support native audio output on all platforms. return -true on success, false otherwise. params Volume -Th
- **SetTrackFormat**(EMediaPlayerTrack TrackType, int32 TrackIndex, int32FormatIndex) — Set the format on the specified track. Selecting the format will not switch to the specified track. To switch tracks, use SelectTrack instead. If the track is already selected, the format change will be applied immediately. return -true if the track was selected, false otherwise. params TrackType -T
- **SetVideoTrackFrameRate**(int32 TrackIndex, int32 FormatIndex, floatFrameRate) — Set the frame rate of the specified video track. return -true on success, false otherwise. params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one. params FrameRate -The frame rate to set (must b
- **SetViewField**(float Horizontal, float Vertical, boolAbsolute) — Set the field of view (only for 360 videos). return -true on success, false otherwise. params Horizontal -Horizontal field of view (in Euler degrees). params Vertical -Vertical field of view (in Euler degrees).
- **SetViewRotation**(FRotator& Rotation, boolAbsolute) — Set the view's rotation (only for 360 videos). return -true on success, false otherwise. params Rotation -The desired view rotation.
- **SupportsRate**(float Rate, boolUnthinned) — Check whether the specified playback rate is supported. params Rate -The playback rate to check. params Unthinned -Whether no frames should be dropped at the given rate.
- **SupportsScrubbing**(Check whether the currently loaded media supports scrubbing. return -true if scrubbing is supported, false otherwise.)
- **SupportsSeeking**(Check whether the currently loaded media can jump to a certain position. return -true if seeking is supported, false otherwise.)
- **SetAudioDeviceGUID**(FString &DeviceGUID) — Sets the audio device for the media player; currently only effective on PC platforms. add by watsonxie CanPause CanPlaySource CanPlayUrl Close GetAudioTrackChannels GetAudioTrackSampleRate GetAudioTrackType GetDesiredPlayerName GetDuration GetHorizontalFieldOfView GetMediaName GetNumTracks GetNumTra

## 属性

- **of** — samples to cache ahead of the play head. @see CacheBehind, CacheBehindGame Duration of samples to cache behind the play head (when not running as game). @see CacheAhead, CacheBehindGame Duration of samples to cache behind the play head (when running as game). @see CacheAhead, CacheBehind Output any

## 委托

- voidOnEndReached()
- A delegate that is invoked when playback has reached the end of the media.
- voidOnMediaClosed()
- A delegate that is invoked when a media source has been closed.
- voidOnMediaOpened(FStringOpenedUrl)
- A delegate that is invoked when a media source has been opened.
- Depending on whether the underlying player implementation opens the media
- synchronously or asynchronously, this event may be executed before or
- after the call to OpenSource OpenUrl returns.
- voidOnMediaOpenFailed(FStringFailedUrl)
- A delegate that is invoked when a media source has failed to open.
- This delegate is only executed if OpenSource OpenUrl returned true and
- the media failed to open asynchronously later. It is not executed if
- OpenSource OpenUrl returned false, indicating an immediate failure.
- voidOnPlaybackResumed()
- A delegate that is invoked when media playback has been resumed.
- voidOnPlaybackSuspended()
- A delegate that is invoked when media playback has been suspended.
- voidOnSeekCompleted()
- A delegate that is invoked when a seek operation completed successfully.
- Depending on whether the underlying player implementation performs seeks
- synchronously or asynchronously, this event may be executed before or
- after the call to Seek returns.
- voidOnTracksChanged()
- A delegate that is invoked when the media track collection changed.
- voidOnMediaPlayFirstFrame()
- OnEndReached
- OnMediaClosed
- OnMediaOpened
- OnMediaOpenFailed
- OnPlaybackResumed
- OnPlaybackSuspended
- OnSeekCompleted
- OnTracksChanged
- OnMediaPlayFirstFrame