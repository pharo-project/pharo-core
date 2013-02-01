specs
defaultSpec
	
	^ { #Panel.
			#useProportionalLayout.
			#add:. {{#model .	#commentInputField }	. #layout: .  #(0 0 1 1 0 0 0 -25)}.
			#add:. {{#model.	#okCancelToolBar }	. #layout:.  #(0 1 1 1 0 -25 00)} .
			#hSpaceFill .
			#vSpaceFill }