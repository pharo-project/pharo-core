registerToolsOn: registry
	"Add ourselves to registry. See [Smalltalk tools class]
	
	StrongPointerExplorer registerToolsOn: Smalltalk tools
	" 
	registry register: self as: #strongPointerExplorer
