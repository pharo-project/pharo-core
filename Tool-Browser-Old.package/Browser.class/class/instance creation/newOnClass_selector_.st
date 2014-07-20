newOnClass: aClass selector: aSymbol
	"Open a new class browser on this class."
	| newBrowser |

	newBrowser := self new.
	newBrowser setClass: aClass selector: aSymbol.
	^ self 
		openBrowserView: (newBrowser openOnClassWithEditString: nil)
		label: 'Class Browser: ', aClass name
