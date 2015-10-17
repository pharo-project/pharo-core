examplesInClasses: aSelector do: aBlock
	| classes examples |
	self shouldnt: [ classes  := (self perform: aSelector) ] raise: Error.
	classes do: [ :each |
		self shouldnt: [ examples := each gtExamples ] raise: Error.
		examples do: [ :example |
			self shouldnt: [ aBlock value: example ] raise: Error ] ]