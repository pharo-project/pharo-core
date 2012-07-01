*Tools-Browser
browseAllImplementorsOfList: selectorList title: aTitle 
	"Create and schedule a message browser on each method that implements 
	the message whose selector is in the argument selectorList. For 
	example,  
	self new browseAllImplementorsOfList: #(at:put: size) title: 'Implementors of',  #(at:put: size) asString."
	| implementorLists flattenedList |

	implementorLists := selectorList collect: [:each | self allImplementorsOf: each].
	flattenedList := SortedCollection new.
	implementorLists
		do: [:each | flattenedList addAll: each].
	Cursor normal show.
	^ self browseMessageList: flattenedList name: aTitle