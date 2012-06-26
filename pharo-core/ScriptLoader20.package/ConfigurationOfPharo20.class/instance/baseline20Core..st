baselines
baseline20Core: spec
	"Auto-generated method"
	<version: '2.0-baseline-core' imports: #('2.0-baseline-kernel')>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://ss3.gemstone.com/ss/Pharo20' ].
	
	spec for: #pharo do: [
		spec
			package: 'System-Announcements';
			package: 'System-Applications';
			package: 'System-Change Notification';
			package: 'System-Changes';
			package: 'System-Clipboard';
			package: 'System-CommandLine';
			package: 'System-FilePackage';
			package: 'System-FileRegistry';
			package: 'System-Finalization';
			package: 'System-Hashing';
			package: 'System-History';
			package: 'System-Installers';
			package: 'System-Localization';
			package: 'System-Object Events';
			package: 'System-Object Storage';
			package: 'System-Platforms';
			package: 'System-Serial Port';
			package: 'System-Settings';
			package: 'System-Sound';
			package: 'System-Support';
			package: 'System-Text';
			package: 'System-Tools';
			package: 'Network-Kernel';
			package: 'Network-MIME';
			package: 'Network-Mail';
			package: 'Network-Protocols';
			package: 'Network-RFC822';
			package: 'Network-URI';
			package: 'Network-UUID';
			package: 'Network-Url';
			package: 'FileSystem-AnsiStreams';
			package: 'FileSystem-Core';
			package: 'FileSystem-Disk';
			package: 'FileSystem-Memory';
			package: 'FileSystem-Zip';
			package: 'Zinc-HTTP';
			package: 'Zinc-Patch-HTTPSocket';
			package: 'Announcements-Core';
			package: 'Announcements-Help';
			package: 'Announcements-View';
			package: 'Settings-Compiler';
			package: 'Settings-Display';
			package: 'Settings-FreeType';
			package: 'Settings-Graphics';
			package: 'Settings-Kernel';
			package: 'Settings-Monticello';
			package: 'Settings-Network';
			package: 'Settings-Polymorph';
			package: 'Settings-System';
			package: 'Settings-Tools';
			package: 'Tools'.
	
		spec group: 'System' with: #('System-Announcements' 'System-Applications' 'System-Change Notification' 'System-Changes' 'System-Clipboard' 'System-CommandLine' 'System-FilePackage' 'System-FileRegistry' 'System-Finalization' 'System-Hashing' 'System-History' 'System-Installers' 'System-Localization' 'System-Object Events' 'System-Object Storage' 'System-Platforms' 'System-Serial Port' 'System-Settings' 'System-Sound' 'System-Support' 'System-Text' 'System-Tools').
		spec group: 'Network' with: #('Network-Kernel' 'Network-MIME' 'Network-Mail' 'Network-Protocols' 'Network-RFC822' 'Network-URI' 'Network-UUID' 'Network-Url').
		spec group: 'FileSystem' with: #('FileSystem-AnsiStreams' 'FileSystem-Core' 'FileSystem-Disk' 'FileSystem-Memory' 'FileSystem-Zip').
		spec group: 'Zinc' with: #('Zinc-HTTP' 'Zinc-Patch-HTTPSocket').
		spec group: 'Announcements' with: #('Announcements-Core' 'Announcements-Help' 'Announcements-View').
		spec group: 'Settings' with: #('Settings-Compiler' 'Settings-Display' 'Settings-FreeType' 'Settings-Graphics' 'Settings-Kernel' 'Settings-Monticello' 'Settings-Network' 'Settings-Polymorph' 'Settings-System' 'Settings-Tools').
		spec group: 'PharoTools' with: #('Tools') ].