testSetLinkWithPragmaOptions
	| sendNode link |
	link := MetaLink new.
	sendNode := (ReflectivityExamples>>#exampleMethodWithMetaLinkOptions) ast body statements first value.
	sendNode link: link.
	self assert: (sendNode links includes: link).
	self assert: (ReflectivityExamples>>#exampleMethodWithMetaLinkOptions) class = CompiledMethod.
	sendNode removeLink: link.
	(ReflectivityExamples>>#exampleMethodWithMetaLinkOptions) destroyTwin.
	self assert: (ReflectivityExamples>>#exampleMethodWithMetaLinkOptions) class = CompiledMethod.
	self assert: (ReflectivityExamples>>#exampleMethodWithMetaLinkOptions) reflectiveMethod = nil.
	