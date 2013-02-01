specs
defaultSpec
	<spec>
	^ {#Panel. 
			#changeProportionalLayout. 
			#'add:'. {#(#model 'classNameLabel' ).  #layout:.  #(0 0 1 0 0 0  0 25)}. 
			#'add:'. {#(#model 'classNameTextField' ). #layout:. #( 0 0 1 0 0 30 0 65)}. 
			#'add:'. {#(#model 'categoryLabel' ). #layout:. #( 0 0 1 0 0 70 0 95)}. 
			#'add:'. {#(#model 'categoryField' ). #layout:. #(0 0 1 0 0 100 0 135)}. 
			#add:. {#(#model #toolbar ). #layout:. #(0 1 1 1 0 -25 0 0)}. 
			#vResizing:. #spaceFill. #hResizing:. #spaceFill}