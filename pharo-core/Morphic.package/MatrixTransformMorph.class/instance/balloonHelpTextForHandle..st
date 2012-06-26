halos and balloon help
balloonHelpTextForHandle: aHandle
	aHandle eventHandler firstMouseSelector == #changeRotationCenter:with:
		ifTrue:[^'set center of rotation'].
	^super balloonHelpTextForHandle: aHandle