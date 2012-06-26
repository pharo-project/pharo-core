viewing access
contents
	"Answer the contents string, obeying diffing directives if needed"

	^ self showingAnyKindOfDiffs
		ifFalse:
			[self undiffedContents]
		ifTrue:
			[self showsVersions
				ifTrue:
					[self diffedVersionContents]
				ifFalse:
					[self contentsDiffedFromCurrent]]