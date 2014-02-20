testDangerousClassesEnabling

	| savedExistingSystemSetting myExpectedError |

	savedExistingSystemSetting := DangerousClassNotifier enabled.

	DangerousClassNotifier disable.
	self assert: DangerousClassNotifier enabled not.
	DangerousClassNotifier disableForTesting.
      self assert: DangerousClassNotifier enabled not.
	DangerousClassNotifier restoreAfterTesting. 
	self assert: DangerousClassNotifier enabled not.

	DangerousClassNotifier enable.
	self assert: DangerousClassNotifier enabled.	
	DangerousClassNotifier disableForTesting.
      self assert: DangerousClassNotifier enabled not.
	DangerousClassNotifier restoreAfterTesting. 
	self assert: DangerousClassNotifier enabled.

	myExpectedError := false.
	[ 	DangerousClassNotifier disableForTesting.
		DangerousClassNotifier disableForTesting.
	] on: Error do: [  myExpectedError := true ].
	self assert: myExpectedError.

	myExpectedError := false.
	[ 	DangerousClassNotifier restoreAfterTesting.
		DangerousClassNotifier restoreAfterTesting.
	] on: Error do: [  myExpectedError := true ].
	self assert: myExpectedError.			

	DangerousClassNotifier enable.
	DangerousClassNotifier disableForTesting.
	self assert: (DangerousClassNotifier check: #ProtoObject).
	DangerousClassNotifier restoreAfterTesting.
	myExpectedError := false.
	[ DangerousClassNotifier check: #ProtoObject ] on: Error do: [ myExpectedError := true  ].
	self assert: myExpectedError.

	savedExistingSystemSetting 
		ifTrue: [ DangerousClassNotifier enable ]
		ifFalse: [ DangerousClassNotifier disable ].
	self assert: DangerousClassNotifier enabled equals: savedExistingSystemSetting.
