baseline35: spec 
	<version: '3.5-baseline'>
	"loads correctly with atomic load, gives warning if loaded linearly...the explicit load of 
	 MetacelloTestConfigurationOfAtomicFan shouldn't break the chain of the atomic load"
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			package: 'GoferBar';
			package: 'GoferBeau' with: [ 
				spec 
					requires: 'GoferBar';
					includes: #('GoferFoo' ) ]; 
			package: 'GoferFar' with: [ spec requires: #('GoferFoo' ) ]; "Far loaded after Foo, but Fan depends upon Far"
			yourself.
		spec 
			project: 'GoferFoo' with: [
				spec
					className: 'MetacelloTestConfigurationOfAtomicFoo';
					versionString: '2.5-baseline';
					loads: 'GoferFoo';
					repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
			yourself ].
