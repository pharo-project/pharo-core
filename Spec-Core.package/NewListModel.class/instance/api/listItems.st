listItems
	"<api: #inspect>"
	"Return the items of the list. They are your domain specific items"
	
	^ listItemsCache ifNil: [ listItemsCache :=  filteringBlock value value: items value ]
	