deselectTimeOut: evt
	"Deselect timout. Now really deselect"
	owner selectedItem == self
	ifTrue: [
		self isInDockingBar
			ifTrue: [evt hand releaseMouseFocus: owner]
			ifFalse: [evt hand newMouseFocus: owner].
		owner selectItem: nil event: evt   ].