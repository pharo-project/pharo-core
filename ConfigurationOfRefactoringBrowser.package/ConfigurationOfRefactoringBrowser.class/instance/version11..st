versions
version11: spec
	<version: '1.1' imports: #('1.1-baseline')>

	spec for: #common do: [
		spec blessing: #development.
		spec author: 'MarianoMartinezPeck'.
		spec description: '- Added fixes and tests for Refactoring-Spelling
		- new versions '.
	].

	spec for: #pharo do: [	
		spec 
			package: 'AST-Core' with: 'AST-Core-lr.49';
			package: 'AST-Tests' with: 'AST-Tests-lr.5';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.101';
			package: 'Refactoring-Tests' with: 'Refactoring-Tests-lr.31';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.18'.
			"package: 'Refactoring-Tests-Spelling' with: 'Refactoring-Tests-Spelling-StanShepherd.11';
			package: 'Refactoring-Spelling-BugFixes' with: 'Refactoring-Spelling-BugFixes-StanShepherd.11'"

	].
	spec for: #squeak do: [	
		spec author: 'DaleHenrichs'.
		spec description: 'Squeak support based on Squeak3.10.2-Trunk-090912 and OmniBrowser-2.0.3.sar'.
		spec 
			package: 'AST-Core' with: 'AST-Gwenael_Casaccio.215';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.57';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.6'.

	].
			