packageListKey: aChar from: view
	"Respond to a Command key in the package pane in the PackageBrowser"
	aChar == $f ifTrue: [^ self findClass].
	^ self classListKey: aChar from: view
