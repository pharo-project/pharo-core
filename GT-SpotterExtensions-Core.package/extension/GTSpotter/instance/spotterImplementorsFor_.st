spotterImplementorsFor: aStep
	<spotterOrder: 30>
	self flag: #specialFilter.
	aStep listProcessor
		title: 'Implementors';
		itemFilterName: [ :method | method selector asString ];	
		filter: GTFilterSubstring item: [ :filter :context | 
			SystemNavigation default allBehaviorsDo: [ :class | class methodsDo: filter ] ]