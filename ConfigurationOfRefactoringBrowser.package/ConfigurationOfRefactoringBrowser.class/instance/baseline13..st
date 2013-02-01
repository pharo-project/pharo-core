baselines
baseline13: spec 
	<version: '1.3-baseline'>
	
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
