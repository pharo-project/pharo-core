protocol
openWithSpec 

	super openWithSpec.
	apiSetters widget ifNotNil: [:w || wdw height |
		height := apiSetters listItems inject: 0 into: [:s :e | s + e widget height ].

		wdw := self window widget.
		wdw height: height + wdw labelArea height + 12.
		wdw width: 470 ]