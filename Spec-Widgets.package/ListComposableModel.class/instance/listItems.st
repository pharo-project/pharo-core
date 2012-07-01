protocol
listItems
	"Return the items of the list. They are your domain specific items"
	
	^ listItemsCache ifNil: [ listItemsCache :=  filteringBlockHolder contents value: listHolder contents ]
	