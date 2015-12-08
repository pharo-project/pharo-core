version102: spec
	<version: '1.0.2' imports: #('1.0-baseline' )>

	spec for: #common do: [
		spec blessing: #release.
		spec description: '- pick up most recent gofer code
  - updated class comments
  - another comment fix
  - added http://squeaksource.blueplane.jp/ as a well known repository
  - repository priorities were used in the wrong order (thanks to Dale Henrichs)
'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '3/5/2010 09:32'.
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core-dkh.121';
			package: 'Gofer-Tests' with: 'Gofer-Tests-lr.116'.].