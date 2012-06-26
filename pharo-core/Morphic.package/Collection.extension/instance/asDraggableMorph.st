*Morphic-Basic
asDraggableMorph
	| string |
	string := self collect: [:each | each asString ].
	string := string joinUsing: Character space.
	^ ( StringMorph contents: string )
		color: Color white;
		yourself