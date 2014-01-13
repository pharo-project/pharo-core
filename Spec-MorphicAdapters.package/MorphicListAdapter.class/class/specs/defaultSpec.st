defaultSpec
	<spec: #default>
	^ {#PluggableListMorph.
			#color:. Color white.
	    		#model:. 					#model.
			#getListSizeSelector:. 			#listSize.
			#autoDeselect:.				#(model autoDeselect).
			#getIndexSelector:. 			#getIndex.
			#setIndexSelector:. 			#setIndex:.
			#getSelectionListSelector:.		#getSelectionStateFor:.
			#setSelectionListSelector:.		#setSelectionStateFor:at:.
			#backgroundColoringBlockOrSelector:. #backgroundColorFor:at:.
			#getListElementSelector:. 		#listElementAt:.
			#resetListSelector:.			#resetListSelection.
			#getMenuSelector:.			#menu:shifted:.
			#setMultipleSelection:.			{#model. #multiSelection}.
			#wrapSelector:. 				#wrapItem:index:.
			#borderWidth:.						#(model borderWidth).
			#borderColor:.						#(model borderColor).
			#setBalloonText:.					{ #model . #help}.
			#dragEnabled:.						#(model dragEnabled).
			#dropEnabled:.						#(model dropEnabled).	
			#hResizing:. 					#spaceFill.
			#vResizing:. 					#spaceFill}