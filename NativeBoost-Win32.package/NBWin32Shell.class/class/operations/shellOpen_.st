shellOpen: file
	"
	self shellOpen: 'c:\pharo.pdf'
	"

	^self shellExecute: 'open' file: file parameters: '' directory: '' show: SW_SHOW