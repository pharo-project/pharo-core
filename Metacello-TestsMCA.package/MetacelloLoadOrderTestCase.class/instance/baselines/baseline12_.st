baseline12: spec 
	<version: '1.2-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core';
			package: 'Example-AddOn' with: [ spec requires: #('Example-Core' ) ];
			package: 'Example-Tests' with: [ spec requires: #('Example-AddOn' ) ];
			package: 'Example-TestsUI' with: [ spec requires: #('Example-UI' 'Example-Tests' ) ];
			package: 'Example-UI' with: [ spec requires: #('Example-AddOn' ) ].
		spec
			group: 'Core' with: #('Example-Core' 'Example-AddOn' );
			group: 'Tests' with: #('Example-Tests' 'Example-TestsUI' );
			group: 'No UI' with: #('Core' 'Example-Tests' ).].
