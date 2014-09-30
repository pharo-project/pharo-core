modelFor: aPresentation

	^ (super modelFor: aPresentation)
		highlightSmalltalkContext: aPresentation highlightSmalltalkContext;
		bindingsStrategy: self methodBindingsStrategy;
		yourself