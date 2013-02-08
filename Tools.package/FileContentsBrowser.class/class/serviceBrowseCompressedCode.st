System-FileRegistry
serviceBrowseCompressedCode
	"Answer a service for opening a changelist browser on a file"

	^ (SimpleServiceEntry 
		provider: self 
		label: 'Code-file browser'
		selector: #browseCompressedCodeStream:
		description: 'Open a "file-contents browser" on this file, allowing you to view and selectively load its code'
		buttonLabel: 'Code')
		argumentGetter: [ :fileList | fileList readOnlyStream ]