utilities
defaultPreferredAnnouncementClassForEvent: aChangeEvent

	| itemKindName eventKindName announcementClassName announcementClass |
	itemKindName := aChangeEvent itemKind.
	eventKindName := (aChangeEvent class name endsWith: 'Event') 
		ifTrue: [ aChangeEvent class name copyFrom: 1 to: aChangeEvent class name size - 'Event' size ] 
		ifFalse: [ aChangeEvent class name ].
	announcementClassName := 	(
										'System', 
										itemKindName capitalized, 
										eventKindName,
										'Announcement'
									) asSymbol.
	announcementClass := Smalltalk at: announcementClassName ifAbsent: [nil].
	^ announcementClass