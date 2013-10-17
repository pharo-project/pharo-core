defaultSpec

	^ { #ContainerModel.
			#add:.	{ self topSpec. #layout:. 	#(FrameLayout
													bottomFraction: 0
													bottomOffset: 20) }.
			#add:.	{{#model . #container } . #layout: . #(FrameLayout topOffset: 22) }
	   }