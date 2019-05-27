initialize
registerAllSubclasses
	<script>
	self allSubclassesDo: [ :aSubclass | ScriptableDebugger registerDebuggerScript: aSubclass underName: aSubclass scriptName. ]
	