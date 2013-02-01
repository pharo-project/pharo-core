communication with model
itemAtIndex: index

	^ (displayListCache at: index)
		ifNil: [ | item |
			(runningProcesses at: index) ifNotNil: [:process | process terminate ].
			item := self rawItemAtIndex: index.
			item := self model getDisplayForItem: item at: index.
			displayListCache at: index put: item.
			item ]