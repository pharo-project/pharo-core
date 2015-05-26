spotterExtensionMethodsFor: aStep
	<spotterOrder: 30>
	aStep listProcessor
			allCandidates: [ self extensionMethods ];
			title: 'Extension Methods';
			filter: GTFilterSubstring