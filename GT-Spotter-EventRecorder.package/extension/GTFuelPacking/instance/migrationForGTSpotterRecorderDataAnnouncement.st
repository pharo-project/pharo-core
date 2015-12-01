migrationForGTSpotterRecorderDataAnnouncement
	<fuelMaterializerMigration>
	^ [ :aMaterializer | aMaterializer 
				migrateClassNamed: #GTSpotterRecorderDataAnnouncement toClass: GTEventAnnouncement ]