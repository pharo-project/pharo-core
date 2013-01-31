possible bugs
addRemoveDependents
	| detector |
	detector := self new.
	detector resultClass: RBClassEnvironment.
	detector name: 'Number of addDependent: messages > removeDependent:'.
	detector classBlock: 
			[:context :result | 
			| count |
			count := 0.
			((Set
				withAll: (context selectedClass whichSelectorsReferTo: #addDependent:))
					addAll: (context selectedClass whichSelectorsReferTo: #removeDependent:);
				yourself) do: 
					[:sel | 
					(context selectedClass compiledMethodAt: sel) messagesDo: 
							[:each | 
							each == #addDependent: ifTrue: [count := count + 1].
							each == #removeDependent: ifTrue: [count := count - 1]]].
			count > 0 ifTrue: [result addClass: context selectedClass]].
	^detector