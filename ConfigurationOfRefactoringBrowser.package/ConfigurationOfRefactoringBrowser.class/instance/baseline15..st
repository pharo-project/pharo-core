baselines
baseline15: spec 
	<version: '1.5-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
	].
	
	spec for: #pharo do: [
		spec repository: 'http://www.squeaksource.com/rb'.
		spec 
			package: 'AST-Core';
			package: 'AST-Tests-Core' with: [ spec requires: 'AST-Core' ];
			package: 'AST-Semantic' with: [ spec requires: 'AST-Core' ];
			package: 'Refactoring-Core' with: [ spec requires: 'AST-Core' ];
			package: 'Refactoring-Tests-Core' with: [ spec requires: 'Refactoring-Core' ];
			package: 'Refactoring-Spelling' with: [ 
				spec requires: 'Refactoring-Core'.
				spec postLoadDoIt: #postLoadRBSpelling ];
			package: 'Refactoring-Tests-Spelling' with: [ spec requires: 'Refactoring-Spelling'. ].
	
		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #( 'AST-Core' 'Refactoring-Core' 'Refactoring-Spelling' 'AST-Semantic');
			group: 'Tests' with: #( 'AST-Tests-Core' 'Refactoring-Tests-Core' 'Refactoring-Tests-Spelling' );
			group: 'Core Tests' with: #('Core' 'Tests' );
			
			yourself.
	].
	spec for: #squeak do: [
		spec repository: 'http://source.wiresong.ca/ob/'.
		spec 
			package: 'AST-Core';
			package: 'Refactoring-Core' with: [ spec requires: 'AST-Core' ];
			package: 'Refactoring-Spelling' with: [ spec requires: 'Refactoring-Core' ].

		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #( 'AST-Core' 'Refactoring-Core' 'Refactoring-Spelling' );
			group: 'Tests' with: #('Core');
			group: 'Core Tests' with: #('Core' 'Tests' );
			
			yourself.
	].
	spec for: #gemstone do: [
		spec repository: 'http://seaside.gemstone.com/ss/rb'.

		spec 
			project: 'GsCore' with: [
				spec
					className: 'ConfigurationOfGsCore';
					versionString: '0.239-baseline';
					file: 'ConfigurationOfGsCore';
					repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ];
			yourself.

		spec
			package: 'AST-Core' with: [ spec requires: 'GsCore' ];
			package: 'AST-Tests-Core' with: [ spec requires: 'AST-Core' ];
			yourself.

		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #( 'AST-Core' );
			group: 'Tests' with: #( 'AST-Tests-Core' );
			group: 'Core Tests' with: #('Core' 'Tests' );
			
			yourself.
	].