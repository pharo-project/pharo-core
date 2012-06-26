specs
defaultSpec
	<spec>
	^ {#MultiColumnListSpec.
			#wrapSelector:. 				#wrapItem:.
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
			#hResizing:. 					#spaceFill.
			#vResizing:. 					#spaceFill}