registerToolsOn: registry
	"Add ourselves to registry. See [Smalltalk tools]" 
	registry register: self default as: #userManager
