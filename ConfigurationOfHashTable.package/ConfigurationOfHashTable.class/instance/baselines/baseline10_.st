baseline10: spec
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'Adding Configuration and Migration to SmalltalkHub'.
		spec repository: 'http://www.smalltalkhub.com/mc/Moose/HashTable/main'.
		spec 
			package: 'Hashtable'.
		spec 
			group: 'Core' with: #('Hashtable' ) .
 	]