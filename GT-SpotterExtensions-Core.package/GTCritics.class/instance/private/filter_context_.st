filter: filter context: context
	'Running Critics ...' displayProgressFrom: 0 to: self rules size during: [ :bar |
		self rules withIndexDo: [ :rule :index | 
			| newRule |
			self cache 
				results: (newRule := rule class new) 
				critics: self
				ifPresent: [ :existingRule | 
					(existingRule isEmpty or: [ existingRule problemCount < 1 ])
						ifFalse: [ filter value: existingRule ] ] 
				ifAbsent: [ 
					[ bar current: index; label: index asString, '/', self rules size asString, ' ', newRule name asString ]
						on: Error 
						do: [ " ignore errors by morphics " ].
					[ RBSmalllintChecker runRule: newRule onEnvironment: self environment ]
						on: Error
						do: [ " ignore errors by lint " ] ] ] ]