selectPackageFor: aClass
	"I'm called to properly select a class pache/tag.
	 Since we are showing root tags as packages when their are the only ones, we need to determine 
	 if we are going to select the package or the tag..."

	self model showGroups
		ifTrue: [ self selectedPackage: self packageWidget selectedGroup ]
		ifFalse: [ 
			| package tag |
			package := aClass package.
			tag := package classTagForClass: aClass.
			self
				selectedPackage:
					((tag isRoot and: [ package classTags size = 1 ])
						ifTrue: [ tag package ]
						ifFalse: [ tag ]) ]