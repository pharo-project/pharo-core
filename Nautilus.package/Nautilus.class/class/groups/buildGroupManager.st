buildGroupManager
	| holder |
	holder := GroupHolder new.
	(holder addAPackageGroupSilentlyNamed: 'Work' packages: OrderedCollection new)
		removable: true;
		isFillable: true.
	^ holder