infoList
	infoList ~~ nil ifTrue: [ ^infoList ].
	^ infoList := self calculateInfoList