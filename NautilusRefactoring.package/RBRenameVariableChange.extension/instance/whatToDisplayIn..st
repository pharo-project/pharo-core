*NautilusRefactoring
whatToDisplayIn: aChangeBrowser

	| result |
	result := OrderedCollection with: self.
	^ result, (self changes gather: [:e | e changes ])