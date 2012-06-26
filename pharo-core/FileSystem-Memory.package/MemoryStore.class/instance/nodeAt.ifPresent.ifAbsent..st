private
nodeAt: aPath ifPresent: presentBlock ifAbsent: absentBlock
	| current |
	current := self root.
	aPath do: [ :segment | 
		current isDictionary
			ifTrue: [ current := current at: segment ifAbsent: [ ^ absentBlock value ]]
			ifFalse: [ ^ absentBlock value ]].
	^ presentBlock value: current