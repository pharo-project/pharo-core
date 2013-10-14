baselineProject21: spec 
	<version: '2.1-baseline'>
	
	spec for: #common do: [
		spec
			project: 'MD5' with: [
				spec
					className: 'MetacelloVersionQueryMiscConfig';
					versionString: '1.0-baseline';
					loads: #('Misc-MD5' ) ];
			project: 'Example Core' with: [
				spec
					className: 'MetacelloVersionQueryExampleConfig';
					versionString: '1.0-baseline';
					loads: #('Core' ) ];
			project: 'Example Tests' with: [
				spec
					className: 'MetacelloVersionQueryExampleConfig';
					versionString: '1.0-baseline';
					loads: #('Example-Tests' ) ].
		spec 
			package: 'Project-Core' with: [ spec requires: #('Example Core' 'MD5' ) ];
			package: 'Project-Tests' with: [ spec requires: #('Project-Core' 'Example Tests' ) ].
		spec
			group: 'Core' with: #('Project-Core' );
			group: 'Tests' with: #('Project-Tests' ).].
