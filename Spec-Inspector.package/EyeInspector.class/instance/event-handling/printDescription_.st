printDescription: item
	"When you select an element in the list of the inspector, prnt on the description textModel the element selected"
	
	item ifNotNil: [:element | 
		description text: ([ element description ] on: Error do: [ 'Error while printing element' ]) ]