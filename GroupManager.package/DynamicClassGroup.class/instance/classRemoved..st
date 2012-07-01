announcements
classRemoved: anAnnouncement
	| class |
	
	class := anAnnouncement removedClass.
	
	blocks copy do: [:b | 
		(b value anySatisfy: [:c | c = class ])
			ifTrue: [ | col |
				col := OrderedCollection new.
				b value do: [:c | c = class
									ifFalse: [ col add: c ]].
				blocks 
					remove: b;
					add: [ col ]]]