getEnvironmentVariable: aString
   "Win32Utils getEnvironmentVariable: 'windir'"

   ^ self getEnvironmentVariable: aString ifAbsent: [nil]