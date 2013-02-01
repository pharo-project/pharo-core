events - keyboard
specialKeyPressed: anEvent
	"A special key with the given ascii-value was pressed; dispatch it"
	| keyString max nextSelection oldSelection howManyItemsShowing |
	
	keyString := anEvent keyString.
	keyString = '<escape>'
		ifTrue: [" escape key"
			^ ActiveEvent shiftPressed
				ifTrue: [ ActiveWorld invokeWorldMenuFromEscapeKey ]
				ifFalse: [ (self yellowButtonActivity: false) ifTrue: [ ^ self ]]].

	keyString = '<cr>'
		ifTrue: [ 
			"enter pressed" 
			self selectSecondSelection ].
		
	max := self listSize.
	max > 0 ifFalse: [ ^ self ].
	nextSelection := oldSelection := self selectedIndex.
	
	(keyString = '<down>' or: [ keyString = '<Shift-down>' ])
		ifTrue: [" down arrow"
			"self resetListSelectionSilently."
			nextSelection := oldSelection + 1.
			nextSelection := nextSelection min: max ].
	
	(keyString = '<up>' or: [ keyString = '<Shift-up>' ])
		ifTrue: [ " up arrow"
			"self resetListSelectionSilently."
			oldSelection = 0 
				ifTrue: [ nextSelection := self listSize ]
				ifFalse: [
					nextSelection := oldSelection - 1.
					nextSelection := 1 max: nextSelection ]].
		
	keyString = '<home>'
		ifTrue: [" home"
			"self resetListSelectionSilently."
			nextSelection := 1].
		
	keyString = '<end>' 
		ifTrue: [" end"
			"self resetListSelectionSilently."
			nextSelection := max].
	
	howManyItemsShowing := self numberOfDisplayedItems.
	
	keyString = '<pageUp>'
		ifTrue: 	[" page up"
			"self resetListSelectionSilently."
			nextSelection := 1 max: oldSelection - howManyItemsShowing].
	keyString = '<pageDown>'
		ifTrue: [" page down"
			"self resetListSelectionSilently."
			nextSelection := oldSelection + howManyItemsShowing min: max].

	(self enabled and: [model okToChange]) ifFalse: [ ^ self ].
	
	"No change if model is locked"
	
	oldSelection = nextSelection ifTrue: [ ^ self ].
	((anEvent shiftPressed not and: [ anEvent commandKeyPressed not ]) and: [ self selectionWithKeys ]) ifTrue: [ self resetSelectionIndexes ].
	self setIndex: nextSelection.
	anEvent shiftPressed ifTrue: [ self addAtIndexes: nextSelection ]