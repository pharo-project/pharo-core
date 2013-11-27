defaultSpec
	<spec:#default>
	
	^ {#MorphTreeMorph.
		#model:.  		#(model treeModel).
		
		#dragEnabled:. #(model dragEnabled).
		#dropEnabled:. #(model dropEnabled).
		#initializeColumsFrom:. #(model).
		#hResizing:. 	#spaceFill.
		#vResizing:.	#spaceFill.
		#autoDeselection:. #(model autoDeselection).
		#resizerWidth:.	#(model resizerWidth).
		#columnInset:. #(model columnInset).
		#iconBlock:.	#(model iconBlock).
		#rowInset:.		#(model rowInset).
		#keystrokeActionSelector:. #keyStroke:.
		#preferedPaneColor:. #(model preferedPaneColor).
		#multiSelection:.	#(model multiSelection).
		#autoMultiSelection:.	#(model autoMultiSelection).
		#removeOnlyLastSelected:. #(model #selectOnlyLastHighlighted).
		#isCheckList:. #(model isCheckList).
		#doubleClickSelector:. #doubleClick.
		#getMenuSelector:. #menu:shifted:.
		#rowColorForEven:odd:. #(model evenRowColor). #(model oddRowColor). 
		#buildContents }