version1021: spec
	<version: '1.0.2.1' imports: #('1.0.2.1-baseline' )>

	spec for: #common do: [
		spec blessing: #release.
		spec description: '- add secondary repository'.
		spec author: 'DaleHenrichs'.
		spec timestamp: '6/15/2010 10:47'.
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core-dkh.121';
			package: 'Gofer-Tests' with: 'Gofer-Tests-lr.116'.].