tools registry
registerToolsOn: registry
	"Register ourselves as inspector for Dictionary (and its subclasses)"
	
	 
	registry registerInspector: self for: Dictionary
