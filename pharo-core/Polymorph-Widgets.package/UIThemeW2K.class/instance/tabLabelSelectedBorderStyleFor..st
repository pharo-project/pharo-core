tabs
tabLabelSelectedBorderStyleFor: aTabLabel 
	"Answer the normal border style for a tab panel."

	| aStyle |
	aStyle := W2KComplexTabBorder new.
	aStyle width: 2.
	aStyle color: self backgroundColor.
	^aStyle.