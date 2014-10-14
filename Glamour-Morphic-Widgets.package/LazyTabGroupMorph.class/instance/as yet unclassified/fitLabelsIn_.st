fitLabelsIn: width
	|delta morphs |
	
	delta := (self measureWidth - width).
	delta < 0 ifTrue: [
		self tabSelectorMorph tabs do: [ :aTabMorph |
			(aTabMorph label submorphs first isKindOf: GLMButton) ifTrue:[
				aTabMorph label submorphs first updateLabelTextToFit: aTabMorph label submorphs first measureWidth ] ].
		^ self ].

	morphs := OrderedCollection new.
	self tabSelectorMorph tabs size > 0 ifTrue: [
		self tabSelectorMorph tabs do: [ :aTabMorph |
			(aTabMorph label submorphs first isKindOf: GLMButton) ifTrue: [
				morphs add: aTabMorph label submorphs first] ] ].

	GLMButton shrinkButtons: morphs by: delta.