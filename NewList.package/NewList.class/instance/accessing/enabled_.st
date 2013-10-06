enabled: aBoolean
	"Set the value of enabled"

	enabled contents = aBoolean ifTrue: [^self].
	enabled contents: aBoolean.
	self changed: #enabled.
	self
		adoptPaneColor: self paneColor;
		changed