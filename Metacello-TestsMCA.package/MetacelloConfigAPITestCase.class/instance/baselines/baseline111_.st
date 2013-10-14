baseline111: spec 
	<version: '1.1.1-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core'.
		spec for: #nested do: [
			spec
				package: 'Example-Base';
				yourself ]].
	spec for: #extra do: [
		spec
			package: 'Example-Test';
			yourself].
