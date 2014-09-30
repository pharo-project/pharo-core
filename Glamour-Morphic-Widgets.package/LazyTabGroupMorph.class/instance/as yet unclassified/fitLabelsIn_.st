fitLabelsIn: width
	|delta morphs |
	
	delta := (self measureWidth - width).
	
	delta < 0 ifTrue: [
		self tabSelectorMorph tabs do: [ :each |
			(each label isKindOf: GLMButton) ifTrue:[
				each normalLabel updateLabelTextToFit: each normalLabel measureWidth.
				each selectedLabel updateLabelTextToFit: each selectedLabel measureWidth.
			].
		].
		^ self.
	].
	
	morphs := OrderedCollection new.
	self tabSelectorMorph tabs size > 0 ifTrue: [
		self tabSelectorMorph tabs do: [ :each |
			(each label isKindOf: GLMButton) ifTrue:[
				morphs add: each label.
			]
		].
	].

	GLMButton shrinkButtons: morphs by: delta.