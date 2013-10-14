version10beta0: spec 
	<version: '1.0-beta.0' imports: #('1.0-beta.0-baseline' )>
	
	spec for: #common do: [
		spec blessing: #beta.
		spec description: 'GemTools client for Pharo/Squeak'.
		spec 
			package: 'OB-SUnitGUI' with: 'OB-SUnitGUI-dkh.52';
			package: 'GemTools-Client' with: 'GemTools-Client.experimental-dkh.493';
			package: 'GemTools-Platform' with: 'GemTools-Platform.squeakCommon-dkh.2' ].
	spec for: #'pharo1.0Beta' do: [
		spec package: 'GemTools-Platform' with: 'GemTools-Platform.pharo10beta-dkh.2' ].
