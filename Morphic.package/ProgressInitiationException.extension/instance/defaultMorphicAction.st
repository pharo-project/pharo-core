*Morphic
defaultMorphicAction
	| result progress |
	progress := SystemProgressMorph show: progressTitle from: minVal to: maxVal.
	[ result := progress do: workBlock ] on: ProgressNotification do: [:ex|
		ex extraParam isString ifTrue: [progress label: ex extraParam].
		ex resume].
	self resume: result