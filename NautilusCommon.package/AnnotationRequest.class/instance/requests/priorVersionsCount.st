priorVersionsCount
	"A report of how many previous versions there are of the method."

	| versionsCount |
	versionsCount := self methodClass changeRecordsAt: self methodSelector.
	^ versionsCount > 1
		ifTrue: [ 
			versionsCount = 2
				ifTrue: [ '1 prior version' ]
				ifFalse: [ versionsCount printString , ' prior versions' ] ]
		ifFalse: [ 'no prior versions' ]