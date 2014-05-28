defaultSpec
	<spec>
	
	^ {#SpecDropListMorph.
			#wrapSelector:.					#wrap:withIndex:.
	    	#on:list:selected:changeSelected:. 	#model. #getList. #getIndex. #setIndex:.
			#hResizing:. 						#spaceFill.
			#vResizing:. 						#spaceFill.
			#dragEnabled:.						#(model dragEnabled).
			#dropEnabled:.						#(model dropEnabled).	
			#setBalloonText:.					{ #model . #help}}