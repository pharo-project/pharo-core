openPharoZenWorkspace
	"Open a Workspace showing the Pharo Zen values in random order"

	"self openPharoZenWorkspace"

	Smalltalk tools openWorkspace
		label: 'Pharo Zen';
		toggleStylingActive;
		contents: self pharoZenValuesContents