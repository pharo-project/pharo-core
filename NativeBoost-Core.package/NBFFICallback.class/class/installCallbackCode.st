code generation
installCallbackCode
	| enterCodeFn leaveCodeFn leaveOffset returnAddr |

		cbEnter := NBCallbackCodeGen new generateCallbackEnterCodeFor: self.
		cbEnter install.
		
		returnAddr := cbEnter address value + (cbEnter code offsetAt: #returnToC).
		cbLeave := NBCallbackCodeGen new generateCallbackLeaveCodeFor: self leaveAddr: returnAddr.
		
		cbLeave install.
