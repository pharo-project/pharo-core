versions
version11: spec
	<version: '1.1' imports: #('4.0-baseline' )>

	spec for: #'pharo' do: [
		
		spec 
			blessing: #'development';
			description: '1.1 : Introduction of the builder';
			author: 'BenjaminVanRyseghem';
			timestamp: '7/18/2012 15:11'.
		
		spec 
			package: 'Spec-Bindings' with: 'Spec-Bindings-BenjaminVanRyseghem.11';
			package: 'Spec-Builder' with:'Spec-Builder-BenjaminVanRyseghem.8';
			package: 'Spec-Core' with: 'Spec-Core-PavelKrivanek.53';
			package: 'Spec-Examples' with: 'Spec-Examples-BenjaminVanRyseghem.7';
			package: 'Spec-Layout' with: 'Spec-Layout-BenjaminVanRyseghem.16';
			package: 'Spec-Tests' with: 'Spec-Tests-BenjaminVanRyseghem.11';
			package: 'Spec-Tools' with: 'Spec-Tools-BenjaminVanRyseghem.46';
			package: 'Spec-Widgets' with: 'Spec-Widgets-BenjaminVanRyseghem.60']