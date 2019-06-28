menu code
dynamicCodeContextMenu: aBuilder
	<contextMenu>
	<specDebuggerCodeContextMenu>
	self flag: 'BROKEN 2019-06-28'.
	aBuilder model codeContextMenuDebuggingActions do: [ :anAction | 
		anAction asMenuRegistrationIn: aBuilder ]