package
addPackagesAsGroups: aCollection

	aCollection
		ifNotEmpty: [| packages firstGroup | 
			packages := aCollection sort: [:a :b | a name <= b name ].
			packages do: [:package || group |
				group := self addPackagesAsGroup: {package}.
				firstGroup ifNil: [ firstGroup := group ]].
		^ firstGroup ].
	^ nil
		
	