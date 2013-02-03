specs
defaultSpec
	
	^ { #Panel.
			#useProportionalLayout.
			#add:. {{#model .	#commentInputField }	. #layout: .  #(FrameLayout
																			bottomOffset: -25)}.
			#add:. {{#model.	#okCancelToolBar }	. #layout:.  #(FrameLayout
																			topFraction: 1
																			topOffset: -25)} .
			#hSpaceFill .
			#vSpaceFill }