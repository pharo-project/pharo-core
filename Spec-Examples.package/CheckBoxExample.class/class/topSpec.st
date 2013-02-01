specs
topSpec

	^ { #ComposableSpec.
			#add:. {{#model .	#button1 } . #layout:.  #(0 0 0.33 0 0 0 0 25)}.
			#add:.  {{#model .	#button2 } . #layout:. #(0.33 0 0.66 0 0 0 0 25)}.
			#add:.  {{#model .	#button3 } . #layout:. #(0.66 0 1 0 0 0 0 25)}}