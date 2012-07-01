specs
defaultSpec
	<spec: #default>
	^ {#ListSpec.
	    		#model:. 					#model.
			#getListSizeSelector:. 			#listSize.
			#getIndexSelector:. 			#getIndex.
			#setIndexSelector:. 			#setIndex:.
			#getSelectionListSelector:.		#getSelectionStateFor:.
			#setSelectionListSelector:.		#setSelectionStateFor:at:.
			#getListElementSelector:. 		#listElementAt:.
			#resetListSelector:.			#resetListSelection.
			#getMenuSelector:.			#menu:shifted:.
			#keystrokeSelector:.			#keyStroke:fromMorph:.
			#setMultipleSelection:.			{#model. #multiSelection}.
			#wrapSelector:. 				#wrapItem:.
			#hResizing:. 					#spaceFill.
			#vResizing:. 					#spaceFill}