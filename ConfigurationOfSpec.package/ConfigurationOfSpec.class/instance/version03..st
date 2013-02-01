versions
version03: spec
	<version: '0.3' imports: #('3.0-baseline' )>

	spec for: #'pharo' do: [
		
		spec 
			blessing: #'development';
			description: '03 : Introduction of bindings';
			author: 'BenjaminVanRyseghem';
			timestamp: '3/26/2012 13:02'.
		
		spec 
			package: 'Spec-Bindings' with: 'Spec-Bindings-BenjaminVanRyseghem.4';
			package: 'Spec-Builder' with:'Spec-Builder-BenjaminVanRyseghem.6';
			package: 'Spec-Core' with: 'Spec-Core-BenjaminVanRyseghem.17';
			package: 'Spec-Examples' with: 'Spec-Examples-BenjaminVanRyseghem.4';
			package: 'Spec-Tests' with: 'Spec-Tests-BenjaminVanRyseghem.3';
			package: 'Spec-Tools' with: 'Spec-Tools-BenjaminVanRyseghem.22';
			package: 'Spec-Widgets' with: 'Spec-Widgets-BenjaminVanRyseghem.24']