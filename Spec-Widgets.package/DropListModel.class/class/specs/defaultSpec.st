defaultSpec
	<spec>
	
	^ {#DropListSpec.
	    		#on:list:selected:changeSelected:. 	#model. #getList. #getIndex. #setIndex:.
			#hResizing:. 						#spaceFill.
			#vResizing:. 						#spaceFill.
			#borderWidth:.						#(model borderWidth).
			#borderColor:.						#(model borderColor).
			#dragEnabled:.						#(model dragEnabled).
			#dropEnabled:.						#(model dropEnabled).	
			#setBalloonText:.					{ #model . #help}}