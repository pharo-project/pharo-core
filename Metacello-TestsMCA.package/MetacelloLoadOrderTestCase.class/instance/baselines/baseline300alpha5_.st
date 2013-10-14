baseline300alpha5: spec 
	<version: '3.0.0-alpha5-baseline'>

	spec for: #common do: [
		spec blessing: #baseline.
		spec description: '3.0.0 baseline based on 3.0.0-alpha5'.
		spec repository: 'http://www.squeaksource.com/Seaside30'.
		spec
			package: 'Grease-Core';
			package: 'Seaside-Core' with: [ spec requires: #('Grease-Core' ). ];
			package: 'Seaside-Canvas' with: [ spec requires: #('Seaside-Core' ). ];
			package: 'Seaside-Session' with: [ spec requires: #('Seaside-Core' ). ];
			package: 'Seaside-Component' with: [ spec requires: #('Seaside-Core' ). ];
			package: 'Seaside-RenderLoop' with: [ spec requires: #('Seaside-Component' 'Seaside-Session' ). ];
			package: 'Seaside-Tools-Core' with: [ 
				spec requires: #('Seaside-Core' 'Seaside-Component' 'Seaside-RenderLoop' 'Seaside-Session' ). ];
			package: 'Seaside-Widgets' with: [ spec requires: #('Seaside-Component' 'Seaside-Canvas' ). ];
			package: 'Seaside-Environment' with: [ 
				spec requires: 
					#('Seaside-Core' 'Seaside-Canvas' 'Seaside-Session' 'Seaside-Component' 'Seaside-RenderLoop'
					  'Seaside-Tools-Core' 'Seaside-Widgets' ). ];
			package: 'Seaside-Flow' with: [ 
				spec requires: #('Seaside-Core' 'Seaside-Component' 'Seaside-RenderLoop' 'Seaside-Tools-Core' ). ];
			package: 'Seaside-Development' with: [ spec requires: #('Seaside-Tools-Web' 'Seaside-Flow' ). ];
			package: 'Seaside-Examples' with: [ 
				spec requires: #('Seaside-Component' 'Seaside-Canvas' 'Seaside-Tools-Core' ). ];
			package: 'Seaside-Tools-Web' with: [ 
				spec requires: #('Seaside-Tools-Core' 'Seaside-RenderLoop' 'Seaside-Widgets' ). ];
			package: 'Seaside-Tools-OmniBrowser' with: [ spec requires: #('Seaside-Tools-Core' ). ];
			package: 'RSS-Core' with: [ spec requires: #('Seaside-Canvas' ). ];
			package: 'RSS-Examples' with: [ spec requires: #('RSS-Core' ). ];
			package: 'Javascript-Core' with: [ spec requires: #('Seaside-Core' 'Seaside-Canvas' ). ];
			package: 'JQuery-Core' with: [ spec requires: #('Javascript-Core' ). ];
			package: 'JQuery-UI' with: [ spec requires: #('JQuery-Core' ). ];
			package: 'Prototype-Core' with: [ spec requires: #('Javascript-Core' ). ];
			package: 'Scriptaculous-Core' with: [ spec requires: #('Prototype-Core' ). ];
			package: 'Scriptaculous-Components' with: [ 
				spec requires: #('Scriptaculous-Core' 'Seaside-Component' 'Seaside-Flow' ). ];
			package: 'Seaside-HTML5' with: [ spec requires: #('Seaside-Canvas' ). ];
			package: 'Seaside-InternetExplorer' with: [ spec requires: #('Seaside-Core' ). ];
			package: 'Seaside-Email' with: [ spec requires: #('Seaside-Core' ). ];
			package: 'Seaside-FileSystem' with: [ spec requires: #('Seaside-Core' ). ];
			package: 'Seaside-Slime' with: [ spec requires: #('Grease-Core' ). ];
			
			package: 'Grease-Tests-Core' with: [ spec requires: #('Grease-Core' ). ];
			package: 'Seaside-Tests-Core' with: [ spec requires: #('Seaside-Core' 'Grease-Tests-Core' ). ];
			package: 'Seaside-Tests-UTF8' with: [ spec requires: #('Seaside-Tests-Core' ). ];
			package: 'Seaside-Tests-Canvas' with: [ spec requires: #('Seaside-Tests-Core' 'Seaside-Canvas' ). ];
			package: 'Seaside-Tests-Session' with: [ spec requires: #('Seaside-Tests-Core' 'Seaside-Session' ). ];
			package: 'Seaside-Tests-Component' with: [ spec requires: #('Seaside-Component' 'Seaside-Tests-Core' ). ];
			package: 'Seaside-Tests-RenderLoop' with: [ 
				spec requires: #('Seaside-RenderLoop' 'Seaside-Tests-Session' ). ];
			package: 'Seaside-Tests-Environment' with: [ 
				spec requires: 
					#('Seaside-Environment' 'Seaside-Tests-Component' 'Seaside-Tests-RenderLoop' 
					  'Seaside-Tests-Session' 'Seaside-Tests-Canvas' ). ];
			package: 'Seaside-Tests-Functional' with: [ 
				spec requires: #('Seaside-Environment' 'Seaside-Tests-Core' ). ];
			package: 'Seaside-Tests-Flow' with: [ spec requires: #('Seaside-Flow' 'Seaside-Tests-Functional' ). ];
			package: 'Seaside-Tests-Tools-Web' with: [ 
				spec requires: #('Seaside-Tools-Web' 'Seaside-Tests-Environment' ). ];
			package: 'Seaside-Tests-Development' with: [ 
				spec requires: #('Seaside-Development' 'Seaside-Tests-Tools-Web' ). ];
			package: 'Seaside-Tests-Examples' with: [ 
				spec requires: #('Seaside-Examples' 'Seaside-Tests-Environment' ). ];
			package: 'RSS-Tests-Core' with: [ spec requires: #('RSS-Core' ). ];
			package: 'Javascript-Tests-Core' with: [ spec requires: #('Seaside-Tests-Core' 'Javascript-Core' ). ];
			package: 'JQuery-Tests-Core' with: [ 
				spec requires: 
					#('JQuery-Core' 'Javascript-Tests-Core' 'Seaside-Development' 'Seaside-Tests-Functional' ). ];
			package: 'JQuery-Tests-UI' with: [ spec requires: #('JQuery-UI' 'JQuery-Tests-Core' ). ];
			package: 'Prototype-Tests-Core' with: [ 
				spec requires: #('Prototype-Core' 'Javascript-Tests-Core' 'Seaside-Tests-Functional' ). ];
			package: 'Scriptaculous-Tests-Core' with: [ 
				spec requires: #('Scriptaculous-Core' 'Prototype-Tests-Core' ). ];
			package: 'Scriptaculous-Tests-Components' with: [ 
				spec requires: #('Scriptaculous-Components' 'Scriptaculous-Tests-Core' ). ];
			package: 'Seaside-Tests-HTML5' with: [ spec requires: #('Seaside-HTML5' 'Seaside-Tests-Functional' ). ];
			package: 'Seaside-Tests-InternetExplorer' with: [ 
				spec requires: #('Seaside-InternetExplorer' 'Seaside-Tests-Core' ). ];
			package: 'Seaside-Tests-Email' with: [ spec requires: #('Seaside-Email' 'Seaside-Tools-Core' ) ];
			package: 'Seaside-Tests-FileSystem' with: [ spec requires: #('Seaside-FileSystem' ). ];
			package: 'Seaside-Tests-Slime' with: [ spec requires: #('Seaside-Slime' ). ]].

	spec for: #squeakCommon do: [
		spec
			package: 'Grease-Core' with: [ spec includes: #('Grease-Pharo-Core' ) ];
			package: 'Seaside-Core' with: [ spec includes: #('Seaside-Pharo-Core' ) ];
			package: 'Seaside-Environment' with: [ spec includes: #('Seaside-Pharo-Environment' ) ];
			package: 'Seaside-Flow' with: [ spec includes: #('Seaside-Pharo-Flow' ) ];
			package: 'Seaside-Tools-Web' with: [ spec includes: #('Seaside-Pharo-Tools-Web' ) ];
			package: 'Seaside-Development' with: [ spec includes: #('Seaside-Pharo-Development' ) ];
			package: 'Seaside-Tools-OmniBrowser' with: [ spec includes: #('Seaside-Pharo-Tools-OmniBrowser' ) ];
			package: 'Seaside-Email' with: [ spec includes: #('Seaside-Pharo-Email' ) ];
			package: 'Javascript-Core' with: [ spec includes: #('Javascript-Pharo-Core' ) ];

			package: 'Grease-Tests-Core' with: [ spec includes: #('Grease-Tests-Pharo-Core' ). ];
			package: 'Seaside-Tests-Core' with: [ spec includes: #('Seaside-Tests-Pharo-Core' ). ];
			package: 'Seaside-Tests-Functional' with: [ spec includes: #('Seaside-Tests-Pharo-Functional' ). ];
			package: 'Seaside-Tests-Flow' with: [ spec includes: #('Seaside-Tests-Pharo-Continuation' ). ];
			package: 'Seaside-Tests-Development' with: [ spec includes: #('Seaside-Tests-Pharo-Development' ). ];
			
			package: 'Grease-Pharo-Core' with: [ spec requires: #('Grease-Core' ) ];
			package: 'Seaside-Pharo-Core' with: [ spec requires: #('Seaside-Core' ) ];
			package: 'Seaside-Pharo-Environment' with: [ spec requires: #('Seaside-Environment' ) ];
			package: 'Seaside-Pharo-Continuation' with: [ spec requires: #('Grease-Core' ) ];
			package: 'Seaside-Pharo-Flow' with: [ spec requires: #('Seaside-Flow' 'Grease-Core' 'Seaside-Pharo-Continuation' ) ];
			package: 'Seaside-Pharo-Tools-Web' with: [ spec requires: #('Seaside-Tools-Web' ) ];
			package: 'Seaside-Pharo-Development' with: [ spec requires: #('Seaside-Development' ) ];
			package: 'Seaside-Pharo-Tools-OmniBrowser' with: [ spec requires: #('Seaside-Tools-OmniBrowser' ) ];
			package: 'Seaside-Pharo-Email' with: [ spec requires: #('Seaside-Email' ) ];
			package: 'Comet-Pharo-Core' with: [ spec requires: #('Comet-Core' ) ];

			package: 'Javascript-Pharo-Core' with: [ spec requires: #('Javascript-Core' ) ];
			package: 'DynamicBindings' with: [ spec repository: 'http://www.squeaksource.com/KomHttpServer' ];
			package: 'KomServices' with: [ spec repository: 'http://www.squeaksource.com/KomHttpServer' ];
			package: 'KomHttpServer' with: [ spec repository: 'http://www.squeaksource.com/KomHttpServer' ];
			package: 'Seaside-Adaptors-Comanche' with: [ 
				spec requires: #('Seaside-Core' 'DynamicBindings' 'KomServices' 'KomHttpServer' ) ];
			package: 'Seaside-Adaptors-Swazoo' with: [ spec requires: #('Seaside-Core' 'Seaside-Swazoo' ) ];
			package: 'Comet-Core' with: [ 
				spec includes: #('Comet-Pharo-Core' ).
				spec requires: #('Seaside-Canvas' 'Javascript-Core' ) ];
			package: 'Comet-Examples' with: [ spec requires: #('JQuery-UI' 'Comet-Core' ) ];
			package: 'Seaside-Swazoo' with: [ spec requires: #('Grease-Core' ). ];

			package: 'Grease-Tests-Pharo-Core' with: [ spec requires: #('Grease-Tests-Core' ) ];
			package: 'Seaside-Tests-Pharo-Core' with: [ spec requires: #('Seaside-Tests-Core' ) ];
			package: 'Seaside-Tests-Pharo-Functional' with: [ spec requires: #('Seaside-Tests-Functional' ) ];
			package: 'Seaside-Tests-Pharo-Continuation' with: [ 
				spec requires: #('Seaside-Pharo-Continuation' 'Grease-Tests-Core' ) ];
			package: 'Seaside-Tests-Pharo-Development' with: [ spec requires: #('Seaside-Tests-Development' ) ];
			package: 'Seaside-Tests-Adaptors-Comanche' with: [ 
				spec requires: #('Seaside-Adaptors-Comanche' 'Seaside-Tests-Core' )];
			package: 'Comet-Tests-Core' with: [ spec requires: #('Javascript-Tests-Core' 'Comet-Core' ) ]].
