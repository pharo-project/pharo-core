classNotReferenced
	| detector |
	detector := self new.
	detector name: 'Class not referenced'.
	detector resultClass: RBClassEnvironment.
	detector classBlock: 
			[:context :result | 
			(context selectedClass isMetaclass
				or: [context isApplication
				or: [context selectedClass subclasses isEmpty not]])
					ifFalse: 
						[| assoc |
						assoc := Smalltalk associationAt: context selectedClass name.
						((context uses: assoc) or: [context uses: context selectedClass name])
							ifFalse: 
								[result addClass: context selectedClass;
									addClass: context selectedClass class]]].
	^detector