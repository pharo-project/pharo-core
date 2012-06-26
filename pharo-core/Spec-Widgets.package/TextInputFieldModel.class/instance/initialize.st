initialization
initialize
	"Initialization code for TextComposableModel"

	super initialize.
	
	ghostText := '' asValueHolder.
	acceptOnCR := true asValueHolder.
	autoAccept := false asValueHolder.
	entryCompletion := self defaultEntryCompletion asValueHolder.
	
	ghostText  whenChangedDo: [:txt | self widget ifNotNil: [:w | w ghostText: txt ]].
	acceptOnCR whenChangedDo: [:bool | self widget ifNotNil: [:w | w acceptOnCR: bool ]].
	autoAccept whenChangedDo: [:bool | self widget ifNotNil: [:w | w autoAccept: bool ]].