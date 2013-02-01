system changes
noMoreAnnounceWhile: aBlock
	"unplug the announcer during aBlock"
	| oldAnnouncer |
	[oldAnnouncer := announcer.
	announcer := nil.
	aBlock value]
		ensure: [announcer := oldAnnouncer]