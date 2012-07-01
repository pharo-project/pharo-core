as yet unclassified
formOf: char

	| newForm |
	self hasCached: char ifTrue: [:form :index |
		self access: char at: index.
		^ form.
	].

	newForm := self computeForm: char.
	self at: char put: newForm.
	^ newForm.
