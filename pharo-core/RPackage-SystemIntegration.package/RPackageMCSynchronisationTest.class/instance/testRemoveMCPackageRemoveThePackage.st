tests - operations on MCPackages
testRemoveMCPackageRemoveThePackage
	"test that when we remove a MC Package, the corresponding RPackage is removed from the organizer"
	
	|XPackage class|
	MCWorkingCopy forPackage: (MCPackage new name: 'XXXXX').
	self assert: (self organizer includesPackageNamed: #XXXXX).
	(self allManagers detect: [:each | each packageName = 'XXXXX']) unregister.
	"for now, this is no longer the expected behavior. See comment in RPackageOrganizer>>update:"
	"self deny: (anOrganizer includesPackageNamed: #XXXXX)."
	