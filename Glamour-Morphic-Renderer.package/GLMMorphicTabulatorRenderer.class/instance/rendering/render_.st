render: aBrowser
	| container |
	container := GLMMorphic containerMorph.
	aBrowser cell isRow 
		ifTrue: 
			[ self 
				renderCustomRow: aBrowser cell
				ofPane: aBrowser pane
				inUI: container
				inBrowser: aBrowser ]
		ifFalse: 
			[ self 
				renderCustomColumn: aBrowser cell
				ofPane: aBrowser pane
				inUI: container
				inBrowser: aBrowser ].
	aBrowser on: GLMBrowserClosed send: #actOnBrowserClosed: to: self.
	^ container