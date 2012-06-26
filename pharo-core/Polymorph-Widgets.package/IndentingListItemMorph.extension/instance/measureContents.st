*Polymorph-Widgets
measureContents
	"Round up in case fractional."
	
	| f |
	f := self fontToUse.
	^((((contents widthToDisplayInTree: self) max: self minimumWidth)  @ ((contents heightToDisplayInTree: self) max: f height)) + (self layoutInset * 2)) ceiling