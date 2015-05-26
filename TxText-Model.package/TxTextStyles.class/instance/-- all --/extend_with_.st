extend: style with: aNewAttribute
	"Answer a style, which is same as base style, but with new/different attribute value.
	We look for a list of existing attribute sets to check, if there's already a matching one, then simply answer it.
	Else we will create a new attribute set which will inherit most from its base set of attributes.
	"
	| newStyle |
	
	"Do nothing, if it already matches"
	(style includes: aNewAttribute) ifTrue: [  ^ style ].
	
	newStyle := style copy add: aNewAttribute.
	^ self addStyle: newStyle