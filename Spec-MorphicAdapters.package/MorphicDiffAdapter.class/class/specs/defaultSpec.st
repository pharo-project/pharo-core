defaultSpec
	<spec>
	
	^ {#DiffMorph.  
		#on:. #(model).
		#from:to:contextClass:. {#model. #leftText}.  { #model. #rightText}. { #model. #contextClass}.
		 #hResizing:. 						#spaceFill.
		#vResizing:. 						#spaceFill.
		#borderWidth:.						#(model borderWidth).
		#borderColor:.						#(model borderColor).
		#setBalloonText:.					#(model help).
		#showOptions:.					#(model showOptions).
		#showOnlyDestination:.			#(model showOnlyDestination).
		#eventHandler:.					{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}}