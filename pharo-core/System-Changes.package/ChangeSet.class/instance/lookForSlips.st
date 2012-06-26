filein/out
lookForSlips
	"Scan the receiver for changes that the user may regard as slips to be remedied"

	| slips nameLine msg |
	nameLine := '
"', self name, '"
'.
	(slips := self checkForSlips) size = 0 ifTrue:
		[^ self inform: 'No slips detected in change set', nameLine].

	msg := slips size = 1
		ifTrue:
			[ 'One method in change set', nameLine, 
'has a halt, reference to the Transcript,
and/or some other ''slip'' in it.
Would you like to browse it? ?']
		ifFalse:
			[ slips size printString,
' methods in change set', nameLine, 'have halts or references to the
Transcript or other ''slips'' in them.
Would you like to browse them?'].

	(UIManager default  chooseFrom: #('Ignore' 'Browse slips') title: msg) = 2
		ifTrue: [self systemNavigation  browseMessageList: slips
							name: 'Possible slips in ', name]