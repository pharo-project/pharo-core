accessing
fieldList
	| slotIndices |
	object ifNil: [^ Set new].
	
	"Implementation note: do not use objectArray withIndexCollect: as super
	because this might collect indices in a WeakArray, leading to constantly changing fieldList
	as explained at http://bugs.squeak.org/view.php?id=6812"
	
	slotIndices := (Array new: object size) writeStream.
	object array withIndexDo: [:each :i |
		(each notNil and: [each ~= flagObject]) ifTrue: [slotIndices nextPut: i printString]].
	
	^ self baseFieldList
		, slotIndices contents