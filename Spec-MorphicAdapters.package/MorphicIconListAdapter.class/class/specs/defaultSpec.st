defaultSpec
	<spec>
	^ {#PluggableIconListMorph.
			#color:. Color white.
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
			#setMultipleSelection:.			{#model. #multiSelection}.
			#wrapSelector:. 				#wrapItem:index:.
			#borderWidth:.						#(model borderWidth).
			#borderColor:.						#(model borderColor).
			#dragEnabled:.						#(model dragEnabled).
			#dropEnabled:.						#(model dropEnabled).	
			#setBalloonText:.					{ #model . #help}.
			#hResizing:. 					#spaceFill.
			#vResizing:. 					#spaceFill}