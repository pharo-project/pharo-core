addTranslatedList: aList
	"Add the given items to this menu, where each item is a pair (<string> <actionSelector>)..  If an element of the list is simply the symobl $-, add a line to the receiver.  The optional third element of each entry, if present, provides balloon help.
	The first and third items will be translated."

	self deprecated: 'Use addList: instead'.
	self addList: aList