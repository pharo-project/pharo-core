versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>

	spec for: #common do: [
		spec blessing: #release.
		spec author: 'MarianoMartinezPeck'.
		spec description: 'First release 1.0 of this project '.
	].

	spec for: #pharo do: [	
		spec 
			package: 'AST-Core' with: 'AST-Core-lr.49';
			package: 'AST-Tests' with: 'AST-Tests-lr.5';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.94';
			package: 'Refactoring-Tests' with: 'Refactoring-Tests-lr.30';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.13'.

	].
	spec for: #squeak do: [	
		spec author: 'DaleHenrichs'.
		spec description: 'Squeak support based on Squeak3.10.2-Trunk-090912 and OmniBrowser-2.0.3.sar'.
		spec 
			package: 'AST-Core' with: 'AST-Gwenael_Casaccio.215';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.57';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.6'.

	].
			