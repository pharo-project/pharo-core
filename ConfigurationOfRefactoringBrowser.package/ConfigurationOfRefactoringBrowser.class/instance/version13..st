versions
version13: spec
	<version: '1.3' imports: #('1.3-baseline' )>

	spec for: #common do: [
		spec blessing: #release.
		spec description: '- Updated to work with Pharo 1.1.
 '.
		spec author: 'DaleHenrichs'.
		spec timestamp: '5/14/2010 13:42'.
].
	spec for: #pharo do: [
		spec 
			package: 'AST-Core' with: 'AST-Core-lr.73';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-lr.9';
			package: 'AST-Semantic' with: 'AST-Semantic-lr.4';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.136';
			package: 'Refactoring-Tests-Core' with: 'Refactoring-Tests-Core-lr.39';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.21';
			package: 'Refactoring-Tests-Spelling' with: 'Refactoring-Tests-Spelling-lr.4'.].
	spec for: #squeak do: [
		spec description: 'Squeak support based on Squeak3.10.2-Trunk-090912 and OmniBrowser-2.0.3.sar'.
		spec author: 'DaleHenrichs'.
		spec 
			package: 'AST-Core' with: 'AST-Gwenael_Casaccio.215';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.66';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.6'.].