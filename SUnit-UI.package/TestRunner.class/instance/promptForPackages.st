actions
promptForPackages
	| packages |
	packages := (PackageOrganizer default packages
				reject: [:package | (package packageName beginsWith: 'Kernel')
						or: [(package packageName beginsWith: 'Collections')
								or: [(package packageName beginsWith: 'Exceptions')
										or: [(package packageName beginsWith: 'SUnit')
												or: [(package packageName beginsWith: 'System')
														or: [package packageName includesSubstring: 'Test' caseSensitive: false]]]]]])
				sort: [:a :b | a packageName < b packageName].
	packages := Array
				with: (UIManager default
						chooseFrom: (packages
								collect: [:package | package packageName])
						values: packages
						title: 'Select Package').
	^ packages