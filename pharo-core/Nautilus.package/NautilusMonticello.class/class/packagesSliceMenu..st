monticello menus
packagesSliceMenu: aBuilder
	<nautilusPackageMenu>
	| target |
	target := aBuilder model.
	(aBuilder item: #'Create Slice and commit it')
		order: 1298;
		help: 'Create a slice and commit it into PharoInbox';
		action: [ self default postNewSliceFor: target window ];
		icon: (self iconClass iconNamed: #monticelloPackage).
		
	(aBuilder item: #'Create Slice')
		order: 1299;
		help: 'Create a slice';
		action: [ self default addSliceFor: target window ];
		icon: (self iconClass iconNamed: #monticelloPackage);
		withSeparatorAfter.