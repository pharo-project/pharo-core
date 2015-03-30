spotterSelectFor: aStep
	<spotterOrder: 40>
	self flag: #specialFilter.
	aStep listProcessor
		title: 'Expression selection';
		filter: GTNullFilter item: [ :filter :context |
			self do: [ :each |
				Smalltalk compiler silentlyDo: [
					(Smalltalk compiler
						evaluate: '| each | each := self. ', context text 
						for: each asSpotterCandidateLink value
						notifying: nil
						logged: false) ifTrue: [ filter value: each ] ] ] ]