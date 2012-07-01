I represent the machine state at the time of an interrupted process. I also represent a query path into the state of the process. The debugger is typically viewed through a window that views the stack of suspended contexts, the code for, and execution point in, the currently selected message, and inspectors on both the receiver of the currently selected message, and the variables in the current context.

Special note on recursive errors:
Some errors affect Squeak's ability to present a debugger.  This is normally an unrecoverable situation.  However, if such an error occurs in an isolation layer, Squeak will attempt to exit from the isolation layer and then present a debugger.  Here is the chain of events in such a recovery.

	* A recursive error is detected.
	* The current project is queried for an isolationHead
	* Changes in the isolationHead are revoked
	* The parent project of isolated project is returned to
	* The debugger is opened there and execution resumes.

If the user closes that debugger, execution continues in the outer project and layer.  If, after repairing some damage, the user proceeds from the debugger, then the isolationHead is re-invoked, the failed project is re-entered, and execution resumes in that world. 