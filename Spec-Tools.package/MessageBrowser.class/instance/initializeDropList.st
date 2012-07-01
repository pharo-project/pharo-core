initialization
initializeDropList

	| item1 item2 item3 item4 |
	item1 := DropListItem 
					named: 'Source' 
					do: [ self textConverter: SourceMethodConverter new ].
	item2 := DropListItem 
					named: 'Byte Code' 
					do: [ self textConverter: ByteCodeMethodConverter new ].
	item3 := DropListItem
					named: 'Decompile' 
					do: [ self textConverter: DecompileMethodConverter new ].
	item4 := DropListItem
					named: 'Time stamp' 
					do: [ self textConverter: TimeStampMethodConverter new ].
	toolbarModel setDropListItems: {item1. item2. item3. item4}