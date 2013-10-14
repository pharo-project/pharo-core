baselineProject20: spec 
	<version: '2.0-baseline'>
	
	spec for: #common do: [
		spec
			project: 'Example ALL' with: [
				spec
					className: 'MetacelloVersionQueryExampleConfig';
					versionString: '1.0-baseline';
					loads: #('ALL' ) ].
		spec 
			package: 'Project-Core' with: [ spec requires: 'Example ALL' ];
			package: 'Project-Tests' with: [ spec requires: 'Project-Core' ].
		spec
			group: 'Core' with: #('Project-Core' );
			group: 'Tests' with: #('Project-Tests' ).].
