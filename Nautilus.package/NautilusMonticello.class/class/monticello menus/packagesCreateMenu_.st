packagesCreateMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| package mcpackage target |
	target := aBuilder model.
	(package := target selectedPackage) ifNil: [ ^ target ].
	mcpackage := NautilusMCBindings default mcPackageFor: package.
	mcpackage ifNotNil: [ ^ self ].
	
	(aBuilder item: #'Create a MC package')
		order: 1297;
		help: 'Create a MC package corresponding to my name';
		icon: (Smalltalk ui icons iconNamed: #monticelloPackageIcon);
		action: [ self default createMCPackageFor: target selectedPackage ];
		enabledBlock: [ target selectedPackages size < 2 ].