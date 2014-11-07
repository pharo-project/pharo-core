addUpAction: anActionOrBlock

	anActionOrBlock isBlock
		ifTrue: [ action := anActionOrBlock ]
		ifFalse: [ self action: anActionOrBlock ]