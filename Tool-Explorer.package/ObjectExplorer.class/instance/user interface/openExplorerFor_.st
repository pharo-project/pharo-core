openExplorerFor: anObject
"
ObjectExplorer new openExplorerFor: Smalltalk
"

	| win |
	self rootObject: anObject.
	win := (self explorerFor: anObject) openInWorld.
	self expandTreeInMorph: win.
	^self
