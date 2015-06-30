testSetLinkIncompatibleReification
	| sendNode link |
	link := MetaLink new
		arguments: #(value);
		selector: #value.
	sendNode := (ReflectivityExamples>>#exampleMethod) ast body statements first value.
	self should: [sendNode link: link] raise: Error