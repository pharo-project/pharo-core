protocol
removeAGroupSilently: aGroup

	| group |
	aGroup ifNil: [ ^ self ].
	 aGroup removable
		ifFalse: [ ^ self openReadOnlyError ].
	group :=  self groups remove: aGroup ifAbsent: [].
	GroupAnnouncer announcer announce: ( AGroupHasBeenRemoved group: aGroup from: self ).
	^ group