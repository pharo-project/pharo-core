examples
submorphsExample
	"display a hierarchical list of the World plus its submorphs plus its submorphs' submorphs etc."
	"[SimpleHierarchicalListMorph submorphsExample]"
	| morph |
	morph :=
		SimpleHierarchicalListMorph
			on: [ Array with:  (MorphWithSubmorphsWrapper with: World)  ]
			list: #value
			selected: nil
			changeSelected: nil
			menu: nil
			keystroke: nil.

	morph openInWindow