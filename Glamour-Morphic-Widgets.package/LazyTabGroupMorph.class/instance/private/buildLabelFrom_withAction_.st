buildLabelFrom: aStringOrMorph withAction: anActionMorphOrNil
	| label innerLabel |

	innerLabel := aStringOrMorph isMorph
		ifTrue: [aStringOrMorph]
		ifFalse: [
			|labelMorph|
			labelMorph := GLMButton new disable.
			labelMorph label text: aStringOrMorph.
			labelMorph ].
	label := anActionMorphOrNil
			ifNil: [
				self flag: 'Added this to make resizing work uniformly. Remove once better resizing mechanism is added.'.
				UITheme builder newRow:{innerLabel} ]
			ifNotNil: [ UITheme builder newRow:{ 
				innerLabel. anActionMorphOrNil}].
	^ label
