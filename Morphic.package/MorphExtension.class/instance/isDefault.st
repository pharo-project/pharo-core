other
isDefault
	"Return true if the receiver is a default and can be omitted"
	locked == true
		ifTrue: [^ false].
	visible == false
		ifTrue: [^ false].
	sticky == true
		ifTrue: [^ false].
	balloonText isNil
		ifFalse: [^ false].
	externalName isNil
		ifFalse: [^ false].
	eventHandler isNil
		ifFalse: [^ false].
	otherProperties ifNotNil: [otherProperties isEmpty ifFalse: [^ false]].
	^ true