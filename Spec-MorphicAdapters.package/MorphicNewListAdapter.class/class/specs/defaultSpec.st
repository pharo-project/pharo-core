defaultSpec

	^ { #NewList.
		#model:.	#model.
		#hResizing:.	#spaceFill.
		#vResizing:.	#spaceFill.
		#deSelectOnReclick:.	#(model deSelectOnReclick).
		#isMultipleSelection:.	#(model isMultipleSelection).
		#unselectOnChange:.	#(model unselectOnChange).
		#whenSelectedIndexChangedDo:.	#(model indexHasBeenSelected).
		#whenSelectedIndexesChangedDo:.	#(model indexesHasBeenSelected).
		#whenSelectedItemChangedDo:.	#(model itemHasBeenSelected).
		#whenSelectedItemsChangedDo:.	#(model itemsHasBeenSelected).
		#whenHeaderIsClickedDo:.	#(model headerClickedBlock).
		#dragEnabled:. #(model dragEnabled).
		#dropEnabled:. #(model dropEnabled).
		#endOfInitialization.
		#setIndex:.				#(model selectedIndex).
		#hasHeader:.	#(model hasHeader).}