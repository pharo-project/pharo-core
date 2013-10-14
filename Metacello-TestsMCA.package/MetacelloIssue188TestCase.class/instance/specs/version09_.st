version09: spec 
	<version: '0.9' imports: #('1.0-baseline' )>
	
	spec for: #common do: [
		spec 
			blessing: #release;
			package: 'GoferBar' with: 'GoferBar.lr.0';
			package: 'GoferFoo' with: 'GoferFoo-lr.1' ].
