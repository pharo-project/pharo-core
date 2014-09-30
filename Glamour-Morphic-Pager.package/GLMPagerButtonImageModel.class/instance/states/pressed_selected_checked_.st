pressed: isPressed selected: isSelected checked: isChecked
	"answers sender with image, corresponding specified state"
	
	"pressed has the highest priority"
	(isPressed & self state pressed notNil)
		ifTrue: [ ^ self state pressed ].
	
	(((isPressed & self state pressed isNil) | isSelected) & self state selected notNil)
		ifTrue: [ ^ self state selected ].
		
	(isChecked & self state checked notNil)
		ifTrue: [ ^ self state checked ].
	
	^ self state normal.