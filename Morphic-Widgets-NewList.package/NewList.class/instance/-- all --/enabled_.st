enabled: aBoolean
	"Set the value of enabled"

	enabled value = aBoolean ifTrue: [^self].
	enabled value: aBoolean.
	self changed: #enabled.
	self
		adoptPaneColor: self paneColor;
		changed