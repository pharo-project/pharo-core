focus
keyStroke: anEvent fromMorph: aMorph

	"Simulate a click on the selected item when space is pressed"
	anEvent keyString = String space
		ifTrue: [| item |
			item := self selectedItem. 
			(item notNil and: [ item respondsTo: #click ])
				ifTrue: [ ^ item click ]].

	"Now check the shortcuts defined by the user"
	shortcutsHolder contents cull: anEvent cull: aMorph.

	"Finally do a super call for the focus change"
	^ super keyStroke: anEvent fromMorph: aMorph