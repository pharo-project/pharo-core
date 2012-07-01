*Tools-Explorer
explorerContents

	^self explorerContentsWithIndexCollect: [:value :index |
		ObjectExplorerWrapper
			with: value
			name: index printString
			model: self]