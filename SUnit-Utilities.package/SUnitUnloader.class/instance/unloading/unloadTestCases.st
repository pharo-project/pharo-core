unloadTestCases
	
	| classesToRemove sunitPackages |
	sunitPackages := self sunitPackages.
	classesToRemove := TestCase allSubclasses
		reject: [:aClass | sunitPackages includes: aClass package ].

	(self sortedForRemoveClasses: classesToRemove) 
		do: [:aClass | aClass removeFromSystem ].