foreignClasses
	| s |
	s := IdentitySet new.
	self foreignSystemCategories
		do: [ :c | 
			(self systemOrganization listAtCategoryNamed: c)
				do: [ :cl | 
					| cls |
					cls := self environment at: cl.
					s
						add: cls;
						add: cls theMetaClass ] ].
	^ s 