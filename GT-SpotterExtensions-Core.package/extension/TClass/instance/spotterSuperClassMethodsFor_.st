spotterSuperClassMethodsFor: aStep
	<spotterOrder: 16>
	aStep listProcessor
			title: 'Super class methods';
			allCandidates: [ self classSide allMethods reject: [ :each | each methodClass = self ] ];
			filter: GTFilterSubstring