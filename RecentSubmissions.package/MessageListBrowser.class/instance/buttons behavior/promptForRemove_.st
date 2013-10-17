promptForRemove: aNode
	"Ask if it is OK to remove the node"
	
	| list |
	
	list := WriteStream on: ''.
	list nextPutAll: 'Are you sure you want to remove :
'.
	aNode printList: list.
	list nextPutAll: ' ?'.
	self format: list contents.

	
	^(self confirm: list contents translated)
					
	