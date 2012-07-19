specs
defaultSpec
	<spec>
	^ {#MultiColumnListSpec.
			#wrapSelector:. 				#wrapItem:index:.
	    		#model:. 						#model.
			#getListSizeSelector:. 			#listSize.
			#getIndexSelector:. 			#getIndex.
			#setIndexSelector:. 			#setIndex:.
			#getSelectionListSelector:.		#getSelectionStateFor:.
			#setSelectionListSelector:.		#setSelectionStateFor:at:.
			#getListElementSelector:. 		#listElementAt:.
			#resetListSelector:.				#resetListSelection.
			#getMenuSelector:.			#menu:shifted:.
			#keystrokeSelector:.			#keyStroke:fromMorph:.
			#setMultipleSelection:.			{#model. #multiSelection}.
			#borderWidth:.						#(model borderWidth).
			#borderColor:.						#(model borderColor).
			#setBalloonText:.					{ #model . #help}.
			#hResizing:. 					#spaceFill.
			#vResizing:. 					#spaceFill}