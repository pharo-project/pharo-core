accessing
default
	^DefaultInstance ifNil: [ 
		DefaultInstance := self new.
		DefaultInstance registerToAnnouncements
	].