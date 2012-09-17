announcement
packageSelected: anAnnouncement
	| package |
	
	package := anAnnouncement package.
	packageButton ifNotNil: [ container removeMorph: packageButton ].	
	container removeMorph: self hFill.
	packageButton := PluggableButtonMorph new
							model: self;
							getMenuSelector: #packageMenu:;
							actionBlock: [:evt |
								evt shiftPressed 
									ifTrue: [ Nautilus openOnPackage: package ]
									ifFalse: [
										model ui
											selectedClass: nil;
											selectedPackage: package ]].
	packageButton
		label: package name;
		height: 25.
	(package isNil or: [ model showGroups ]) ifFalse: [ container addMorph: packageButton ].
	container addMorph: self hFill.