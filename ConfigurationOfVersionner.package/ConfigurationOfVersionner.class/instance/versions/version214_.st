version214: spec
	<version: '2.14' imports: #('2.9-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.14'.
		spec author: 'PavelKrivanek'.
		spec timestamp: '11/17/2016 10:30'.
		spec 
			package: 'Versionner-Core-Model' with: 'Versionner-Core-Model-PavelKrivanek.54';
			package: 'Versionner-Core-Commands' with: 'Versionner-Core-Commands-MarcusDenker.65';
			package: 'Versionner-Core-Announcements' with: 'Versionner-Core-Announcements-ChristopheDemarey.6';
			package: 'Versionner-Core-DependenciesModel' with: 'Versionner-Core-DependenciesModel-MarcusDenker.106';
			package: 'Versionner-Spec-Browser' with: 'Versionner-Spec-Browser-PavelKrivanek.208';
			package: 'Versionner-Tests-Resources' with: 'Versionner-Tests-Resources-MarcusDenker.18';
			package: 'Versionner-Tests-Core-Model' with: 'Versionner-Tests-Core-Model-ChristopheDemarey.33';
			package: 'Versionner-Tests-Core-Commands' with: 'Versionner-Tests-Core-Commands-MarcusDenker.21';
			package: 'Versionner-Tests-Core-DependenciesModel' with: 'Versionner-Tests-Core-DependenciesModel-ChristopheDemarey.46';
			package: 'Versionner-Commit' with: 'Versionner-Commit-TheIntegrator.34';
			package: 'Versionner-Nautilus' with: 'Versionner-Nautilus-PavelKrivanek.1'. ].
