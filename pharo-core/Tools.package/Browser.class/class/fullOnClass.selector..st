instance creation
fullOnClass: aClass selector: aSelector
	"Open a new full browser set to class."

	| brow classToUse |
	classToUse := SystemBrowser default.
	brow := classToUse new.
	brow setClass: aClass selector: aSelector.
	^ classToUse 
		openBrowserView: (brow openEditString: nil)
		label: brow labelString