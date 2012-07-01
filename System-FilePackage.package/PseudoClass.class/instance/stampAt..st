methods
stampAt: selector
	"Answer the authoring time-stamp of the change"

	| code |
	^ ((code := self sourceCode at: selector) isKindOf: ChangeRecord)
		ifTrue:
			[code stamp]
		ifFalse:
			[code string]