update50748
	"self new update50748"
	self withUpdateLog: '18156 restore all notifications for SystemAnnouncer 
	https://pharo.fogbugz.com/f/cases/18156

18076 Locale broken
	https://pharo.fogbugz.com/f/cases/18076'.
	self loadTogether: self script50748 merge: false.
	
[ActiveHand resetClickState; releaseAllFocus. UITheme current focusIndicator: nil. 3 timesRepeat: [ Smalltalk garbageCollect ].  SystemAnnouncer restoreAllNotifications. 3 timesRepeat: [ Smalltalk garbageCollect ]] value.
	self flushCaches.
