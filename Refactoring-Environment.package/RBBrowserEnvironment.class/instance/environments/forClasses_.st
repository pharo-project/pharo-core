forClasses: classCollection 
	| classes |
	classes := OrderedCollection new: classCollection size * 2.
	classCollection do: 
			[:each | 
			classes add: each;
				add: each class].
	^RBClassEnvironment onEnvironment: self classes: classes