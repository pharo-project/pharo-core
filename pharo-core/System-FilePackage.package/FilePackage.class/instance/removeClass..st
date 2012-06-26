accessing
removeClass: aPseudoClass
	(self classes removeKey: aPseudoClass name).
	classOrder copy do:[:cls|
		cls name = aPseudoClass name ifTrue:[ classOrder remove: cls].
	].