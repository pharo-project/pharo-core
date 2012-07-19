specs
defaultSpec
	<spec>
	^ {#CheckboxSpec.
	    		#on:selected:changeSelected:. 	#model. #state. #state:.
			#label:.								{	#model. #label		}.
			#beCheckbox.
			#hResizing:. 						#shrinkWrap.
			#vResizing:. 						#shrinkWrap.
			#setBalloonText:.					{ #model . #help}.
			#borderWidth:.						#(model borderWidth).
			#borderColor:.						#(model borderColor).
			#eventHandler:.					{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}.
			#labelClickable:.					{	#model. #labelClickable}.}