changeset menu
removePrompting: doPrompt
	"Completely destroy my change set.  Check if it's OK first, and if doPrompt is true, get the user to confirm his intentions first."

	| message aName changeSetNumber msg |
	aName := myChangeSet name.
	myChangeSet okayToRemove ifFalse: [^ self]. "forms current changes for some project"
	(myChangeSet isEmpty or: [doPrompt not]) ifFalse:
		[message := 'Are you certain that you want to 
remove (destroy) the change set
named  "', aName, '" ?'.
		(self confirm: message) ifFalse: [^ self]].

	doPrompt ifTrue:
		[msg := myChangeSet hasPreamble
			ifTrue:
				[myChangeSet hasPostscript
					ifTrue:
						['a preamble and a postscript']
					ifFalse:
						['a preamble']]
			ifFalse:
				[myChangeSet hasPostscript
					ifTrue:
						['a postscript']
					ifFalse:
						['']].
		msg isEmpty ifFalse:
			[(self confirm: 
'Caution!  This change set has
', msg, ' which will be
lost if you destroy the change set.
Do you really want to go ahead with this?') ifFalse: [^ self]]].

	"Go ahead and remove the change set"
	changeSetNumber := myChangeSet name initialIntegerOrNil.
	changeSetNumber ifNotNil: [SystemVersion current unregisterUpdate: changeSetNumber].
	ChangeSet removeChangeSet: myChangeSet.
	self showChangeSet: ChangeSet current.