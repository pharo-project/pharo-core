model: aNautilusModel

	model := aNautilusModel.
	model when: #historyChanged send: #historyChanged to: self.
	aNautilusModel selectedPackage ifNotNil: [:e | self packageWidget selectPackage: e].
	aNautilusModel selectedGroup ifNotNil: [:p | self packageWidget selectGroup:p].
	aNautilusModel selectedClass ifNotNil: [:p | self classWidget selectClass: p].