render: aBrowser
	| paneMorph |
	container := GLMMorphic containerMorph.
	paneMorph := self renderObject: aBrowser defaultPane.
	paneMorph layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).
	container addMorphBack: paneMorph.
	aBrowser when: GLMBrowserClosed send: #actOnBrowserClosed: to: self.
	^ container