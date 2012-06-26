tools registry
registerToolsOn: registry
	"Add the default browser to registry. See [Smalltalk tools]" 
	registry register: [ self default ] as: #browser
