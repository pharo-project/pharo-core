defaultSpec
	<spec:#default>
	
	^ #(SpecTreeColumn
		resizable: #(model resizable)
		startWidth: #(model initialWidth)
		setHeaderButtonLabel:font:icon:target:actionSelector: #(model headerLabel) #(model headerFont) #(model headerIcon) model #(model performHeaderActionSelector)
		rowMorphGetSelector: #(model displayBlock))