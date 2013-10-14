version20: spec
	<version: '2.0' imports: #('1.0-baseline' )>
	
	spec for: #common do: [
		spec 
			package: 'GoferFoo' with: 'GoferFoo-lr.4';
			package: 'GoferBar' with: 'GoferBar-lr.1';
			package: 'GoferFaux' with: 'GoferFaux-tg.35';
			yourself. ].
