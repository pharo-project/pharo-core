defaultSpec
	<spec>
	
	^ #( SpecDialogWindow 
			specWidget: #(model contentMorph)
			initialize
			model: model )