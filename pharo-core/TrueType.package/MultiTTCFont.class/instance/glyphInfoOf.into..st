as yet unclassified
glyphInfoOf: char into: glyphInfoArray

	| newForm |
	self hasCached: char ifTrue: [:form :index |
		self access: char at: index.
		glyphInfoArray at: 1 put: form;
			at: 2 put: 0;
			at: 3 put: form width;
			at: 4 put: (self ascentOf: char);
			at: 5 put: self.
		^ glyphInfoArray.
	].

	newForm := self computeForm: char.
	self at: char put: newForm.

	glyphInfoArray at: 1 put: newForm;
		at: 2 put: 0;
		at: 3 put: newForm width;
		at: 4 put: (self ascentOf: char);
		at: 5 put: self.
	^ glyphInfoArray.
