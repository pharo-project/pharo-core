baseline10: spec
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/Moose/GToolkit/main/'.
		spec project: 'GTInspector' with: [
				spec
					className: #ConfigurationOfGTInspector;
					versionString: #'development';
					loads: #('Core' 'Tests' );
					repository: 'http://smalltalkhub.com/mc/Moose/GToolkit/main/' ].
		spec package: 'GT-Playground' with: [
				spec requires: #('GTInspector' ). ].
		spec group: 'default' with: #('GT-Playground' ). ].
