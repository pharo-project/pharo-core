acceptDroppingMorph: aMorph event: evt inMorph: aTreeMorph
	| aTarget aClassArray |
	aTarget := (aTreeMorph scrollerSubMorphFromPoint: evt position) complexContents item.
	aClassArray := aMorph passenger.
	(aTarget notNil and: [ aTarget class == RPackageTag ])
		ifTrue: [ model dropInAPackage: aClassArray into: aTarget ]