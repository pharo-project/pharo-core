layout-properties
layoutInset
	"Return the extra inset for layouts"
	| props |
	props := self layoutProperties.
	^props ifNil:[0] ifNotNil:[props layoutInset].