testDangerousClassesEnabling

	| savedExistingSystemSetting myExpectedError |

	savedExistingSystemSetting := DangerousClassNotifier enabled.

	DangerousClassNotifier disable.
	self assert: DangerousClassNotifier enabled not.
	DangerousClassNotifier disableDuring: [
      self assert: DangerousClassNotifier enabled not].
	self assert: DangerousClassNotifier enabled not.

	DangerousClassNotifier enable.
	self assert: DangerousClassNotifier enabled.	
	DangerousClassNotifier disableDuring: [
      self assert: DangerousClassNotifier enabled not].
	self assert: DangerousClassNotifier enabled.

	DangerousClassNotifier enable.
	DangerousClassNotifier disableDuring: [
		self assert: (DangerousClassNotifier check: #ProtoObject)].
	myExpectedError := false.
	[ DangerousClassNotifier check: #ProtoObject ] on: Error do: [ myExpectedError := true  ].
	self assert: myExpectedError.

	savedExistingSystemSetting 
		ifTrue: [ DangerousClassNotifier enable ]
		ifFalse: [ DangerousClassNotifier disable ].
	self assert: DangerousClassNotifier enabled equals: savedExistingSystemSetting.
