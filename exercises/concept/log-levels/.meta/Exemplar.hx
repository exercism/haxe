function message(logLine:String):String {
	var msg = logLine.substr(logLine.indexOf(":") + 1);
	return StringTools.trim(msg);
}

function logLevel(logLine:String):String {
	return logLine.substring(1, logLine.indexOf("]")).toLowerCase();
}

function reformat(logLine:String):String {
	return '${message(logLine)} (${logLevel(logLine)})';
}
