initializeWidgets
	(releaseNumberLabel := self newLabel)
		text: 'Version number:'.
	(releaseNumber := self newTextInput)
		autoAccept: true.

	(symbolicVersionResolutionCheckBox := self newCheckBox)
		label: 'Solve symbolic versions?';
		state: true;
		whenBuiltDo: [ symbolicVersionResolutionCheckBox labelOnLeft.
						releaseNumber accept: self latestVersionString ];
		whenDesactivatedDo: [ self confirmSymbolicVersionResolutionDesactivation ].