defaultSpec
	<spec>
	^  {#Panel. 
			#changeProportionalLayout. 
			#'add:'. {#(#model 'classNameLabel' ).  #layout:.  #(FrameLayout
																	bottomFraction: 0
																	bottomOffset: 25)}. 
			#'add:'. {#(#model 'classNameTextField' ). #layout:. #(FrameLayout
																	bottomFraction: 0
																	topOffset: 30
																	bottomOffset: 65)}. 
			#'add:'. {#(#model 'categoryLabel' ). #layout:. #(FrameLayout
																	bottomFraction: 0
																	topOffset: 70
																	bottomOffset: 95)}. 
			#'add:'. {#(#model 'categoryField' ). #layout:. #(FrameLayout
																	bottomFraction: 0
																	topOffset: 100
																	bottomOffset: 135)}. 
			#add:. {#(#model #toolbar ). #layout:. #(FrameLayout
																	topFraction: 1
																	topOffset: -25)}. 
			#vResizing:. #spaceFill. #hResizing:. #spaceFill}