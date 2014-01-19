methodRemoved: anAnnouncement
	| item |
	self isDisplayed
		ifFalse: [ ^ self ].
	refreshingBlockHolder ifNil: [ ^ self ].
	item := anAnnouncement methodRemoved.	"Item is a compiled methed, where the list is populated with RGMethod"	"(refreshingBlockHolder contents cull: item cull: anAnnouncement cull: self)
		ifFalse: [ ^ self ]."
	self okToChange
		ifFalse: [ ^ self ].
	UIManager default defer:  [ 
			| sel itm |
			sel := listModel selectedIndex.
			itm := listModel selectedItem.
			(itm notNil and: [ itm methodClass = item methodClass and: [ itm selector = item selector ] ])
				ifTrue: [ textModel hasUnacceptedEdits: false ].
			self
				messages:
					(listModel listItems
						remove: item asFullRingDefinition ifAbsent: [ nil ];
						yourself).
			listModel setSelectedIndex: sel ]