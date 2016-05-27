methodFilter
	^ self
		title: 'method'
		condition: [ :e | e content isEpMethodChange ]