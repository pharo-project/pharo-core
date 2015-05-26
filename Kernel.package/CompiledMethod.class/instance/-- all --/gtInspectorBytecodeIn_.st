gtInspectorBytecodeIn: composite
	<gtInspectorPresentationOrder: 30> 
	^ (GTBytecodeBrowser new treeIn: composite)
		title: 'Bytecode'