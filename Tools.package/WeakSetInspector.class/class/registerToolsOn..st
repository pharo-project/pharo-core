tools registry
registerToolsOn: registry
	"Register ourselves as inspector for WeakSet"
	
	 
	registry registerInspector: self for: WeakSet
