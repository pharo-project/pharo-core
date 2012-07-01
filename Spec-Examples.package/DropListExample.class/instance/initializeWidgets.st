initialization
initializeWidgets 

	| item1 item2 item3 |

	self instantiateModels: #(dropList #DropListModel).
	
	item1 := DropListItem named: 'Red morph' do: self redMorphBlock.
	item2 := DropListItem named: 'Blue morph' do: self blueMorphBlock.
	item3 := DropListItem named: 'Green morph' do: self greenMorphBlock.
	
	dropList items: {item1. item2. item3}.
	self setFocus.