baseline106: spec 
	<version: '1.0.6-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core' with: [ 
				spec repositories: [
						spec 
							repository: 'http://www.example.com/or';
							repository: 'http://www.example.com/ob' ]]].
