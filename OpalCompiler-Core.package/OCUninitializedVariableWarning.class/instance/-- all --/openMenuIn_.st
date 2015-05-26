openMenuIn: aBlock
	| caption index |
	caption := node name, ' appears to be 
uninitialized at this point.
Proceed anyway?'.
	index := aBlock value: #('yes' 'no') value: #() value: caption.
	(index = 1) ifFalse:[^self compilationContext failBlock value].
	^ self resume: true.