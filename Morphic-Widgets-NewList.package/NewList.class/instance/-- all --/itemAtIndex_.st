itemAtIndex: index

	^ (displayListCache at: index)
		ifNil: [ | item rawItem icon |
			(runningProcesses at: index) ifNotNil: [:process | 
				process terminate.
				runningProcesses remove: process ].
			rawItem := self rawItemAtIndex: index.
			icon := self iconForItem: rawItem at: index. 
			rawItem := self model getDisplayForItem: rawItem at: index.
			item := rawItem.
			displayListCache at: index put: item.
			item ]