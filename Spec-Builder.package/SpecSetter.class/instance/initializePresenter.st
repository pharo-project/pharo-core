initialization
initializePresenter
	
	addButton action: [ | sa |
			sa := SpecAdder new.
			
			sa description: descriptionHolder contents.
			sa openWithSpec. ].
	
	editButton action: [ | sa |
			sa := SpecAdder new.
			sa openWithSpec.
			sa description: descriptionHolder contents.
			sa showFor: list selectedItem ].
		
	removeButton action: [ self remove ].	
	
	descriptionHolder whenChangedDo: [:desc | list items: desc specDescription adds.
		desc specDescription addsHolder whenChangedDo: [:items | list items: items ] ].