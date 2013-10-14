version10: spec
	<version: '1.0' imports: #('1.0-baseline' )>
	
	spec for: #common do: [
		spec 
			package: 'GoferFoo' with: 'GoferFoo-lr.1';
			package: 'GoferBar' with: 'GoferBar-jf.1';
			package: 'Faux-Smalltalk' with: 'Faux-Smalltalk-tg.32';
			yourself. ].
