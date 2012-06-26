specs
defaultSpec
	<spec>
	^ {#IconListSpec.
	    		#model:. 						#model.
			#getListSizeSelector:. 			#listSize.
			#getListElementSelector:. 		#listElementAt:.
			#getIndexSelector:. 			#getIndex.
			#setIndexSelector:. 			#setIndex:.
			#getSelectionListSelector:.		#getSelectionStateFor:.
			#setSelectionListSelector:.		#setSelectionStateFor:at:.
			#getIconSelector:.				#getIconFor:.
			#resetListSelector:.				#resetListSelection.
			#getMenuSelector:.			#menu:shifted:.
			#keystrokeSelector:.			#keyStroke:fromMorph:.
			#setMultipleSelection:.			{#model. #multiSelection}.
			#wrapSelector:. 				#wrapItem:.
			#hResizing:. 					#spaceFill.
			#vResizing:. 					#spaceFill}