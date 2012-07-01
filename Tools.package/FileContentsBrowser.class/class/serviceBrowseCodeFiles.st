file list services
serviceBrowseCodeFiles

	^  (SimpleServiceEntry 
		provider: self
		label: 'Browse code files' 
		selector: #selectAndBrowseFile:)
		argumentGetter: [ :fileList | fileList ];
		yourself