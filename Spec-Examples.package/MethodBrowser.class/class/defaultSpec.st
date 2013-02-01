specs
defaultSpec

	^{ #ComposableSpec.
			#add:. {{#model. #listModel}. #layout:.  #(0 0 1 0.5 0 0 0 -15). }.
			#add:. {{#model. #toolbarModel}. #layout:.  #(0 0.5 1 0.5 0 -15 0 15). }.															
			#add:. {{#model. #textModel}. #layout:. #(0 0.5 1 1 0 15 0 0). }}