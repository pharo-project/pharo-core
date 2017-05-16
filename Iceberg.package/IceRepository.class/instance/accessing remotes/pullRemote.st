pullRemote
	^ pullRemote ifNil: [ pullRemote := self pushRemote ]