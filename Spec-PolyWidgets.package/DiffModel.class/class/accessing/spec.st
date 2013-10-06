spec
	<spec>
	
	^ {#DiffMorph.  
		#from:to:contextClass:. {#model. #leftText}.  { #model. #rightText}. { #model. #contextClass}.
		 #hResizing:. 						#spaceFill.
		#vResizing:. 						#spaceFill.
		#borderWidth:.						#(model borderWidth).
		#borderColor:.						#(model borderColor).
		#setBalloonText:.					#(model help).
		#setOptionsPanel:.					#(model showOptions).
		#eventHandler:.					{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}}