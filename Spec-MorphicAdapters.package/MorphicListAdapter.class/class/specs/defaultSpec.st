defaultSpec
	<spec: #default>
	^ {#PluggableListMorph.
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
			#setBalloonText:.					{ #model . #help}.
			#dragEnabled:.						#(model dragEnabled).
			#dropEnabled:.						#(model dropEnabled).	
			#hResizing:. 					#spaceFill.
			#vResizing:. 					#spaceFill}