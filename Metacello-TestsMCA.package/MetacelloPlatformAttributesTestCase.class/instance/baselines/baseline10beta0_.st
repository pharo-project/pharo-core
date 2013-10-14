baseline10beta0: spec 
	<version: '1.0-beta.0-baseline'>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec description: 'GemTools client for Pharo/Squeak'.
		spec repository: 'http://seaside.gemstone.com/ss/GLASSClient'.
		spec 
			package: 'OB-SUnitGUI' with: [
				spec repository: 'http://seaside.gemstone.com/ss/obsunit' ];
			package: 'GemTools-Client' with: [
				spec requires: #('OB-SUnitGUI' ) ];
			package: 'GemTools-Platform' with: [
				spec requires: #('GemTools-Client' ) ]].
