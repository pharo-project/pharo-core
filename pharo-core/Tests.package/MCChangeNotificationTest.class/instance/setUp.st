running
setUp

       "FIXME: Unregister Monticellomocks if it got created in another test
       (for example MCMethodDefinitionTest may create it implicitly).
       This avoids a nasty failure of MCChangeNotificationTest due to
       some inconsistency about the package info registered with it.
       If Monticellomocks was created earlier it will contain a 'regular'
       PackageInfo instance but the test requires it to be an MCMockPackageInfo"
       MCWorkingCopy registry
               removeKey: (MCPackage new name: 'Monticellomocks')
               ifAbsent:[].
       PackageOrganizer default unregisterPackageNamed: 'Monticellomocks'.

       workingCopy := MCWorkingCopy forPackage: self mockPackage.