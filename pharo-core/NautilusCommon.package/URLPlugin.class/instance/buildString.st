private
buildString

	| first string separator |
	separator := ' -> '.
	first := self model showGroups
				ifTrue: [ self model selectedGroup ]
				ifFalse: [ self model selectedPackage ].
	first
		ifNil: [ ^'']
		ifNotNil: [:package | 
			string := package name.
			self model selectedClass
				ifNotNil: [:class |
					string := string,  separator, class name.
					self model selectedCategory 
						ifNotNil: [:category |
							string := string,  separator, category.
							self model selectedMethod
								ifNotNil: [:method | string := string, separator, method selector printString]]]].
	^ string