buildLabelFrom: aStringOrMorph withAction: anActionMorphOrNil
	| label innerLabel |

	innerLabel := aStringOrMorph isMorph
		ifTrue: [aStringOrMorph]
		ifFalse: [
			|container labelMorph|
			container := GLMBrick new.
			labelMorph := GLMLabelBrick new.
			labelMorph text: aStringOrMorph.
			labelMorph layoutProperties horizontalPercent: 100.
			container addBrickBack: labelMorph.
			container layoutProperties horizontalPercent: 100.
			labelMorph layoutProperties marginLeft: 5.
			
			container layoutProperties maxWidthBlock: [ :aTrick |
				labelMorph label textSize x + (2 *  labelMorph layoutProperties marginLeft) + (anActionMorphOrNil ifNotNil: [ anActionMorphOrNil normalImage width * 1.5 ] ifNil: [ 0 ])].
			container ].
		
	label := anActionMorphOrNil
			ifNil: [ innerLabel ]
			ifNotNil: [ 	anActionMorphOrNil layoutProperties horizontalPercent: 0.	anActionMorphOrNil layoutProperties minWidth: (anActionMorphOrNil normalImage width * 1.5). innerLabel addBrickBack: anActionMorphOrNil. innerLabel ].
					
	^ label