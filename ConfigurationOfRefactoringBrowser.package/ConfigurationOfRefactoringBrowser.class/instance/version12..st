versions
version12: spec
	<version: '1.2' imports: #('1.2-baseline')>

	spec for: #common do: [
		spec blessing: #release.
		spec author: 'MarianoMartinezPeck'.
		spec description: '- Integrated the tests of Stan into the package:
Refactoring-Tests-Spelling.
-rename the tests packages of the rest of the refactoring browser to avoid conflicts. The packages are now called:
AST-Tests-Core and Refactoring-Tests-Core.
- Lots of bug fixes, included Pharo issues 2108.
 '.
	].

	spec for: #pharo do: [	
		spec 
			package: 'AST-Core' with: 'AST-Core-lr.66';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-lr.8';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.115';
			package: 'Refactoring-Tests-Core' with: 'Refactoring-Tests-Core-lr.35';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.19';
			package: 'Refactoring-Tests-Spelling' with: 'Refactoring-Tests-Spelling-lr.3'.
			
	].
	spec for: #squeak do: [	
		spec author: 'DaleHenrichs'.
		spec description: 'Squeak support based on Squeak3.10.2-Trunk-090912 and OmniBrowser-2.0.3.sar'.
		spec 
			package: 'AST-Core' with: 'AST-Gwenael_Casaccio.215';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.66';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.6'.

	].
			