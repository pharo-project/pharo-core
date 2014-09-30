pressedColor: isPressed selectedColor: isSelected checkedColor: isChecked
	"answers sender with image, corresponding specified state"
	
	"pressed has the highest priority"
	(isPressed & self state pressedColor notNil)
		ifTrue: [ ^ self state pressedColor ].
	
	(((isPressed & self state pressedColor isNil) | isSelected) & self state selectedColor notNil)
		ifTrue: [ ^ self state selectedColor ].
		
	(isChecked & self state checkedColor notNil)
		ifTrue: [ ^ self state checkedColor ].
	
	^ self state normalColor.