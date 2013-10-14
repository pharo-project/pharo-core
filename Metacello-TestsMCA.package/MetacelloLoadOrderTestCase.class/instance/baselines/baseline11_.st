baseline11: spec 
	<version: '1.1-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core' with: [ spec includes: #('Example-AddOn' ) ];
			package: 'Example-Tests' with: [ spec requires: #('Example-Core' ) ];
			package: 'Example-AddOn' with: [ spec requires: #('Example-Core' ) ];
			package: 'Example-TestsUI' with: [ spec requires: #('Example-UI' 'Example-Tests' ) ];
			package: 'Example-UI' with: [ spec requires: #('Example-AddOn' ) ]].
