noTriggerFilter
	^ self
		title: 'no trigger'
		condition: [ :e | (e tags includesKey: EpLog triggererReferenceKey) not ]