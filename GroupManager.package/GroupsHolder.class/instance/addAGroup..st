adding
addAGroup: aGroup

	(self includesAGroupNamed: aGroup name)
		ifTrue: [ 
			self openError.
			^ nil].
	self groups add: aGroup.
	GroupAnnouncer uniqueInstance announce: ( AGroupHasBeenAdded group: aGroup into: self ).