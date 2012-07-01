as yet unclassified
registerToolsOn: registry
	"Register ourselves as inspector for CompiledMethod"
	
	 
	registry registerInspector: self for: CompiledMethod
