shellExplore: folder
	"
	self shellExplore: 'c:\'
	"

	^self shellExecute: 'explore' file: folder parameters: '' directory: '' show: SW_SHOW