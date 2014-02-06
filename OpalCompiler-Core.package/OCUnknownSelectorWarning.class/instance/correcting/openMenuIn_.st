openMenuIn: aBlock
	| alternatives labels lines caption choice name newSelector |
	name := node selector.
	alternatives := Symbol possibleSelectorsFor: name.
	labels := Array streamContents:
				[:s | s nextPut: name; nextPutAll: alternatives; nextPut: 'cancel'].
	lines := {1. alternatives size + 1}.
	caption := 'Unknown selector, please\confirm, correct, or cancel' withCRs.

	choice := aBlock value: labels value: lines value: caption.
	(choice isZero or: [ choice = labels size ])
		ifTrue: [ ^ self compilationContext failBlock value ].
	choice = 1
		ifFalse: [
	newSelector := alternatives at: choice - 1.
	self replaceSelectorTextTo: newSelector.
	self node selector: newSelector].
	self resume: true.