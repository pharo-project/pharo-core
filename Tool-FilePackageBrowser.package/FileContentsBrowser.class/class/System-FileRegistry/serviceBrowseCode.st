serviceBrowseCode
	"Answer the service of opening a file-contents browser"

	^ (SimpleServiceEntry
		provider: self 
		label: 'Code-file browser'
		selector: #browseStream:
		description: 'Open a "file-contents browser" on this file, allowing you to view and selectively load its code'
		buttonLabel: 'code')
		argumentGetter: [ :fileList | fileList readOnlyStream ]