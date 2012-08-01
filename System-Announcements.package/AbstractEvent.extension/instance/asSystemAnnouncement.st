*System-Announcements
asSystemAnnouncement
	| itemKindName eventKindName announcementClassName announcementClass |
	itemKindName := self itemKind.
	eventKindName := (self class name endsWith: 'Event') 
		ifTrue: [ self class name copyFrom: 1 to: self class name size - 'Event' size ] 
		ifFalse: [ self class name ].
	announcementClassName := (itemKindName capitalized, eventKindName) asSymbol.
	announcementClass := Smalltalk at: announcementClassName ifAbsent: [nil].
	^ announcementClass isNil 
		ifTrue: [ UnknownSystemChange new ]
		ifFalse: [announcementClass new event: self]