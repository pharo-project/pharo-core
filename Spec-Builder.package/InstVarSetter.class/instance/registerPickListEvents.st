initialization
registerPickListEvents
	
	picklist whenPickedItemsChanged: [:item :old|
		item ifNotNil: [
			((textBindings at: list selectedItem ifAbsentPut: [ Dictionary new ]) at: item ifAbsentPut: [ self defaultText->false ]) value: old ]].
	
	picklist whenSelectedItemChanged: [:item || txt |
		item 
			ifNil: [ 
				text text: ''.
				text enabled: false ]
			ifNotNil: [
				txt := ((textBindings at: list selectedItem ifAbsentPut: [ Dictionary new ]) at: item ifAbsentPut: [ self defaultText->false ]) key.
				text text: txt.
				text enabled: true ]]