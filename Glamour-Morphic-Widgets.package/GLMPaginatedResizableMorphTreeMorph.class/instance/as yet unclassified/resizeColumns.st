resizeColumns
	| rowMorphsWidths |
	
	self columns size > 1 ifFalse: [^ self].
		rowMorphsWidths := self rowMorphsWidths.
		self allNodeMorphs do: [ :node |
			node submorphs
				inject: 1
				into: [ :index :morph |
					morph width: (rowMorphsWidths at: index).
					index + 1
				]
		].

		self hHideScrollBar.