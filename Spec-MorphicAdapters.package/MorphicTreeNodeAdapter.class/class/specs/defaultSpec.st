defaultSpec
	<spec:#default>
	
	^ #(SpecTreeNodeModel
		setItemFromBlock:#(model itemBlock)
		icon: #(model icon)
		setChildren: #(model childrenBlock)
		hasContents: #(model hasChildrenBlock))