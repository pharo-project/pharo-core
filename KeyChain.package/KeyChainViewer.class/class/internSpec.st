specs
internSpec
	<spec>
	
	^{#ComposableSpec.
			#add:. {{#model. #list }. #layout:.  #(0 0 1 1 0 0 0 -50)}.
			 #add:. {{#model. #add }. #layout:.  #(0 1 0 1 0 -50 50 -25) }.
			#add:. {{#model. #edit }. #layout:. #(0 1 1 1 50 -50 -50 -25) }.
			#add:. {{#model. #remove }. #layout:.  #(1 1 1 1 -50 -50 0 -25) }.
			#add:. {{#model. #ok }. #layout: . #(0 1 1 1 0 -25 00) }}