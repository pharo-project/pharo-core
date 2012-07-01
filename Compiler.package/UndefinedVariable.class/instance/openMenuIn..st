as yet unclassified
openMenuIn: aBlock
	| labels caption index |
	labels := #('yes' 'no').
	caption := name, ' appears to be 
undefined at this point.
Proceed anyway?'.

	index := aBlock value: labels value: #() value: caption.
	^ self resume: index = 1