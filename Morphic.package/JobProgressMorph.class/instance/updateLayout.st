private
updateLayout
	
	| top |
	labelMorph contents isEmpty
		ifFalse: [ self addMorphBack: labelMorph].
	self addMorphBack: bar.