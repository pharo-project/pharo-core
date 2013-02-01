versions
version121: spec
	<version: '1.2.1' imports: #('1.2-baseline')>

	spec for: #common do: [
		spec blessing: #development.
		spec author: 'MarianoMartinezPeck'.
		spec description: ''.
	].

	spec for: #pharo do: [	
		spec 
			package: 'AST-Core' with: 'AST-Core-lr.67';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-lr.9';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.115';
			package: 'Refactoring-Tests-Core' with: 'Refactoring-Tests-Core-lr.36';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.19';
			package: 'Refactoring-Tests-Spelling' with: 'Refactoring-Tests-Spelling-lr.4'.
			
	].
	spec for: #squeak do: [	
		spec author: 'DaleHenrichs'.
		spec description: 'Squeak support based on Squeak3.10.2-Trunk-090912 and OmniBrowser-2.0.3.sar'.
		spec 
			package: 'AST-Core' with: 'AST-Gwenael_Casaccio.215';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.66';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.6'.

	].
			