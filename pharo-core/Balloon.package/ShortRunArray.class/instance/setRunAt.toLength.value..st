private
setRunAt: i toLength: runLength value: value
	(value < -16r7FFF or:[value > 16r8000]) ifTrue:[^self errorImproperStore].
	(runLength < 0 or:[runLength > 16rFFFF]) ifTrue:[^self errorImproperStore].
	self basicAt: i put: (runLength bitShift: 16) + 
		((value bitAnd: 16r7FFF) - (value bitAnd: -16r8000)).