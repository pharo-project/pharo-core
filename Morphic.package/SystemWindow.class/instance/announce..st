announcement
announce: anAnnouncement
	"announcer is lazy initialized. If announcer is not set, this means that there is no listener, no need to propagate the announcement therefore"
	announcer ifNil: [ ^ self ].
	
	anAnnouncement window: self.
	^ self announcer announce: anAnnouncement