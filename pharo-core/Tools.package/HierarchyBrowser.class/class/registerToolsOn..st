tools registry
registerToolsOn: registry
	"Register receiver as a tool" 
	registry register: self as: #hierarchyBrowser
