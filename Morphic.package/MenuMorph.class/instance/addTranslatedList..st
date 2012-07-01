construction
addTranslatedList: aList
	"Add the given items to this menu, where each item is a pair (<string> <actionSelector>)..  If an element of the list is simply the symobl $-, add a line to the receiver.  The optional third element of each entry, if present, provides balloon help.
	The first and third items will be translated."

	aList do: [:tuple |
		(tuple == #-)
			ifTrue: [self addLine]
			ifFalse:
				[self add: tuple first translated action: tuple second.
				tuple size > 2 ifTrue:
					[self balloonTextForLastItem: tuple third translated ]]]