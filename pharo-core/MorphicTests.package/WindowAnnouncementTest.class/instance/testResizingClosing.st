window creation and deletion
testResizingClosing
	| coll |

	window := SystemWindow labelled: 'foo'.
	coll := OrderedCollection new.
	window openInWorld.
	window announcer on: WindowAnnouncement do: [:ann | coll add: ann].
	self assert: (coll isEmpty).
	window minimizeOrRestore.
	
	"Resizing, moving, collapsing "
	self assert: (coll size = 3).
	self assert: (coll first isResized).
	self assert: (coll second isMoved).
	self assert: (coll third isCollapsed).
	window delete.

	self assert: (coll size = 4).
	self assert: (coll fourth isClosed).
	window := nil