scrollBarThickness
	"Includes border"
	
	| result |
	result := self theme scrollbarThickness.
	self flatColoredScrollBarLook
		ifFalse: [result := result + 2].
	^ result