versions
version14: spec
	<version: '1.4' imports: #('1.3-baseline' )>

	spec for: #common do: [
		spec blessing: #release.
		spec description: '- Updated to work with Pharo 1.1.
 '.
		spec author: 'VeronicaUquillas'.
		spec timestamp: '5/27/2010 14:06'.
].
	spec for: #pharo do: [
		spec 
			package: 'AST-Core' with: 'AST-Core-lr.79';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-lr.10';
			package: 'AST-Semantic' with: 'AST-Semantic-lr.10';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.142';
			package: 'Refactoring-Tests-Core' with: 'Refactoring-Tests-Core-lr.43';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.22';
			package: 'Refactoring-Tests-Spelling' with: 'Refactoring-Tests-Spelling-lr.4'.].
	spec for: #squeak do: [
		spec description: 'Squeak support based on Squeak3.10.2-Trunk-090912 and OmniBrowser-2.0.3.sar'.
		spec author: 'DaleHenrichs'.
		spec 
			package: 'AST-Core' with: 'AST-Gwenael_Casaccio.215';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.66';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.6'.].