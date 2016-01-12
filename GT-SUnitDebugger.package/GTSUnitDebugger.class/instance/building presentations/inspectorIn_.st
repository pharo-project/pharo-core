inspectorIn: aComposite

	(self textualDiffIn: aComposite) title: 'Diff (actual vs. expected)'.
	(self inspectorDiffIn: aComposite) title: 'Objects (actual vs. expected)'.
	(super inspectorIn: aComposite) title: 'Inspector'