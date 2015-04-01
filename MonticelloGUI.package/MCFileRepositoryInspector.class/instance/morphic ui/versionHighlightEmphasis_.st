versionHighlightEmphasis: aString
	| versionName packageName |
	versionName := (aString copyUpToLast: $.) copyUpTo: $(.
	packageName := versionName copyUpToLast: $-.
	(packageName includes: $.)
		ifTrue: [ packageName := packageName copyUpTo: $. ].
	(loaded includes: versionName)
		ifTrue: [ ^ TextEmphasis underlined ].
	(newer includes: aString)
		ifTrue: [ ^ TextEmphasis bold ].
	selectedPackage = packageName
		ifTrue: [ 
			selectedPackageAncestors
				ifNotNil: [ 
					(selectedPackageAncestors includes: versionName)
						ifTrue: [ ^ TextEmphasis normal ]
						ifFalse: [ ^ TextEmphasis bold ] ] ].
	(loadedPackages includes: packageName)
		ifFalse: [ ^ TextEmphasis bold ].
	^ TextEmphasis normal