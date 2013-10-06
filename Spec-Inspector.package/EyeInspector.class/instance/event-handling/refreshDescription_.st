refreshDescription: item
	"When you select an element in the list of the inspector, prnt on the description textModel the element selected"
	| newDescription |
	item ifNil: [ ^ self ].
	
	newDescription := ([ item description ] on: Error do: [ 'Error while printing element' ]).
	
	description text = newDescription
		ifTrue: [ ^ self ].
		
	self 
		keepScrollPositionOf: description 
		during: [ description text: newDescription ].