announcements
methodRemoved: anAnnouncement
	| method |
	
	method := anAnnouncement itemMethod.
	blocks copy do:[: b |
			(b value anySatisfy: [:e | e == method ])
				ifTrue: [ 
					| col |
					col := OrderedCollection new.
					b value do: [:e | 
						e == method
							ifFalse: [ col add: e ]].
					blocks 
							remove: b;
							add: [ col ]]]