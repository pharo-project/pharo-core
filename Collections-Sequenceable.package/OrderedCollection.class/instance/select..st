enumerating
select: aBlock 
	"Evaluate aBlock with each of my elements as the argument. Collect into
	a new collection like the receiver, only those elements for which aBlock
	evaluates to true."

	| newCollection element |
	newCollection := self copyEmpty.
	firstIndex to: lastIndex do:
		[:index |
		(aBlock value: (element := array at: index))
			ifTrue: [newCollection addLast: element]].
	^ newCollection