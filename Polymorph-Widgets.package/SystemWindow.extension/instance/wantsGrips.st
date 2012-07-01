*Polymorph-Widgets
wantsGrips
	"Answer whether the window wants edge and corner grips."
	
	^(self valueOfProperty: #noGrips ifAbsent: [false]) not