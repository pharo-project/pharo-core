pressedColor: isPressed selectedColor: isSelected checkedColor: isChecked of:aTrick
	"answers sender with image, corresponding specified state"
	
	"pressed has the highest priority"
	(isPressed & aTrick pressedColor notNil)
		ifTrue: [ ^ aTrick pressedColor ].
	
	(((isPressed & aTrick pressedColor isNil) | isSelected) & aTrick selectedColor notNil)
		ifTrue: [ ^ aTrick selectedColor ].
		
	(isChecked & aTrick checkedColor notNil)
		ifTrue: [ ^ aTrick checkedColor ].
	
	^ aTrick normalColor.