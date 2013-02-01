versions
version15: spec
	<version: '1.5' imports: #('1.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '- AST-Core and AST-Tests-Core ported to GemStone
- '.
		spec author: 'DaleHenrichs'.
		spec timestamp: '08/12/2010 17:23:46'.
].
	spec for: #'pharo' do: [
		spec 
			package: 'AST-Core' with: 'AST-Core-lr.79';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-lr.10';
			package: 'AST-Semantic' with: 'AST-Semantic-lr.11';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.144';
			package: 'Refactoring-Tests-Core' with: 'Refactoring-Tests-Core-lr.44';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.22';
			package: 'Refactoring-Tests-Spelling' with: 'Refactoring-Tests-Spelling-lr.4'.].
	spec for: #'squeak' do: [
		spec description: 'Squeak support based on Squeak3.10.2-Trunk-090912 and OmniBrowser-2.0.3.sar'.
		spec author: 'DaleHenrichs'.
		spec 
			package: 'AST-Core' with: 'AST-Gwenael_Casaccio.215';
			package: 'Refactoring-Core' with: 'Refactoring-Core-lr.66';
			package: 'Refactoring-Spelling' with: 'Refactoring-Spelling-lr.6'.].
	spec for: #'gemstone' do: [
		spec author: 'DaleHenrichs'.
		spec project: 'GsCore' with: '0.241'.
		spec 
			package: 'AST-Core' with: 'AST-Core-DaleHenrichs.84';
			package: 'AST-Tests-Core' with: 'AST-Tests-Core-DaleHenrichs.11'.].