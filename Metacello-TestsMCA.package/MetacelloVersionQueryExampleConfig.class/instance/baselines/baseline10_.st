baseline10: spec 
	<version: '1.0-baseline'>
	
	spec for: #common do: [
		spec
			project: 'UTF8' with: [
				spec
					className: 'MetacelloVersionQueryMiscConfig';
					file: 'MetacelloVersionQueryMiscConfig';
					versionString: '1.0-baseline';
					loads: #('Misc-UTF8' ) ].
		spec 
			package: 'Example-Core' with: [ spec requires: #('UTF8' ) ];
			package: 'Example-AddOn' with: [ spec requires: #('Example-Core' ) ];
			package: 'Example-Tests' with: [ spec requires: #('Example-AddOn' ) ];
			package: 'Example-TestsUI' with: [ spec requires: #('Example-UI' 'Example-Tests' ) ];
			package: 'Example-UI' with: [ spec requires: #('Example-AddOn' ) ].
		spec
			group: 'Core' with: #('Example-Core' 'Example-AddOn' );
			group: 'Tests' with: #('Example-Tests' 'Example-TestsUI' );
			group: 'No UI' with: #('Core' 'Example-Tests' );
			"recursive group definition"
			group: 'UI' with: #('No UI' 'UI' 'Tests' ).].
