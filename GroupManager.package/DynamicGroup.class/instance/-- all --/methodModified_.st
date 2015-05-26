methodModified: anAnnouncement
	| method new |
	
	method := anAnnouncement oldMethod.
	new := anAnnouncement newMethod.

	blocks copy do:[: b |
			(b value anySatisfy: [:e | e == method ])
				ifTrue: [ 
					| col |
					col := OrderedCollection new.
					b value do: [:e | 
						e == method
							ifTrue: [ col add: new ]
							ifFalse: [ col add: e ]].
					blocks 
							remove: b;
							add: [ col ]]]