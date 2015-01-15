sendersOfIt
	"Open a senders browser on the selected selector"

	| selectedSelector mthds aGlobal syst |
	self lineSelectAndEmptyCheck: [^ self].
	selectedSelector  := self selectedSelector.
	selectedSelector isNil ifTrue: [^ morph flash].
	syst := self model systemNavigation.
	mthds := (syst allCallsOn: selectedSelector).
	aGlobal := syst environment at: selectedSelector ifAbsent: [nil].   
	aGlobal isNil or: [ aGlobal isBehavior not 
									ifFalse: [ mthds := mthds , (syst allReferencesTo: aGlobal binding) ]].
	syst browseMessageList: mthds name: 'Senders or Users of ', selectedSelector autoSelect: selectedSelector 