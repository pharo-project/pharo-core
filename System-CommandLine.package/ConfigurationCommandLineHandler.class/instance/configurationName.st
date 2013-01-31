accessing
configurationName
	^ configurationName ifNil: [ configurationName := self argumentAt: 2 ]