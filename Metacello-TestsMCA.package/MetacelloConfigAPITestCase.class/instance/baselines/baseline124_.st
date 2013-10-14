baseline124: spec 
	<version: '1.2.4-baseline'>
	
	spec for: #common do: [
		spec
			blessing: #baseline;
			repository: 'http://www.example.com/aa';
			yourself.].

	spec for: #common do: [
		spec
			repository: 'http://www.example.com/ab';
			yourself.].
