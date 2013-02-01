baselines
baseline11: spec 
	<version: '1.1-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
	].
	
	spec for: #pharo do: [
		spec repository: 'http://www.squeaksource.com/rb'.
		spec 
			package: 'AST-Core';
			package: 'AST-Tests' with: [ spec requires: 'AST-Core' ];
			package: 'Refactoring-Core' with: [ spec requires: 'AST-Core' ];
			package: 'Refactoring-Tests' with: [ spec requires: 'Refactoring-Core' ];
			package: 'Refactoring-Spelling' with: [ spec requires: 'Refactoring-Core' ].
			"package: 'Refactoring-Tests-Spelling' with: [ spec 
				requires: 'Refactoring-Spelling';
				repository: 'http://www.squeaksource.com/RBBugFixes'];
			package: 'Refactoring-Spelling-BugFixes' with: [ spec 
				requires: 'Refactoring-Spelling';
				repository: 'http://www.squeaksource.com/RBBugFixes']."

		spec
			group: 'default' with: #('Core' );
			group: 'Core' with: #( 'AST-Core' 'Refactoring-Core' 'Refactoring-Spelling' "'Refactoring-Spelling-BugFixes'" );
			group: 'Tests' with: #( 'AST-Tests' 'Refactoring-Tests' "'Refactoring-Tests-Spelling'" );
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
