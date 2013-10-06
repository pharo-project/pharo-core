newOnClass: aClass label: aLabel
	"Open a new class browser on this class."
	| newBrowser |

	newBrowser := self new.
	newBrowser setClass: aClass selector: nil.
	^ self 
		openBrowserView: (newBrowser openOnClassWithEditString: nil)
		label: aLabel
