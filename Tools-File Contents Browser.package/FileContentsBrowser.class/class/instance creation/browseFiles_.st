browseFiles: fileList

	| browser |
	Cursor wait showWhile: [ | packageDict organizer |
		packageDict := Dictionary new.
		organizer := SystemOrganizer defaultList: Array new.
		fileList do: [:fileName | | package |
			package := FilePackage fromFileNamed: fileName.
			packageDict 
				at: package packageName 
				put: package.
			organizer 
				classifyAll: package classes keys 
				under: package packageName].
		(browser := self systemOrganizer: organizer)
			packages: packageDict].
	self
		openBrowserView: browser createViews
		label: 'File Contents Browser'.
