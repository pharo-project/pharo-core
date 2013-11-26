defaultSpec
	<spec>
	
	^ #( SpecDialogWindow 
			specWidget: #(model contentMorph)
			setToolbarFrom: #(model toolbarBlock)
			initialize)