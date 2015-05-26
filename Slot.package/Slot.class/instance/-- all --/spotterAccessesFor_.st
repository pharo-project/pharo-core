spotterAccessesFor: aStep
	<spotterOrder: 10>
	(aStep spotter hasPreviousStep and: [
		(aStep spotter previousStep origin isKindOf: Class) or: [
			aStep origin isKindOf: Class]]) ifTrue: [
		aStep listProcessor
				title: 'Accesses';
				allCandidates: [ 
					SystemNavigation default 
						allAccessesTo: self name 
						from: aStep spotter previousStep origin ];
				itemName: [:each | each asString];
				filter: GTFilterSubstring ]