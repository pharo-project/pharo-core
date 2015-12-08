version100: spec 
	<version: '1.0' imports: #('1.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #release.
		spec author: 'DaleHenrichs'.
		spec timestamp: '1/25/2010 14:19'.
		spec 
			package: 'Gofer-Core' with: 'Gofer-Core-lr.116';
			package: 'Gofer-Tests' with: 'Gofer-Tests-lr.115' ].
	spec for: #pharo do: [].