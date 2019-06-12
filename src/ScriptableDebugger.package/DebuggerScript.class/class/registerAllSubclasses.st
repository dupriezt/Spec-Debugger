initialize
registerAllSubclasses
	<script>
	self allSubclassesDo: [ :aSubclass | ScriptableDebugger2 registerDebuggerScript: aSubclass underName: aSubclass scriptName. ]
	