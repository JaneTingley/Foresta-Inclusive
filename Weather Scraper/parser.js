function dictionary(_dictname) {
	if(_dictname === null) return;
	if(_dictname.length < 1) return;
	var d = new Dict(_dictname);
	var body = d.get('body');
	var lines = body.split("\n");
	var parsed_data = [];
	for(var i = 0; i < lines.length; i++) {
		//remove empty lines, comments, etc.
		if(lines[i].length < 3) continue;
		if(lines[i].charAt(0) == "#") continue;
		if(lines[i] == " ") continue;
		// more conditions???
		// ...
		parsed_data[parsed_data.length] = parseLine(lines[i]);
	}
	broadcastDataTree([], parsed_data);
}

function convertKeyPrefixToString(_prefix) {
	var result = "";
	for(var i = 0; i < _prefix.length; i++) {
		result += _prefix[i];
		if(i < _prefix.length - 1) result += "-";
	}
	return result;
}

function broadcastDataTree(_prefix, _v) {
	if(_v === null) {post("[postTree(_v)] _v is null\n"); return;}
	if(_v === undefined) {post("[postTree(_v)] _v is undefined\n"); return;}
	if(Array.isArray(_v)) {
		for(var i = 0; i < _v.length; i++) broadcastDataTree(_prefix, _v[i]);
	}
	else {
		if(_v.hasOwnProperty('key') && _v.hasOwnProperty('value')) {
			_prefix[_prefix.length] = _v.key;
			if(Array.isArray(_v.value)) {
				//post("complex value of " + _v.key + "\n");
				for(var j = 0; j < _v.value.length; j++) {
					broadcastDataTree(_prefix, _v.value[j]);
				}
			}
			else {
				//post(convertKeyPrefixToString(_prefix) + " = " + _v.value + "\n");
				outlet(0, convertKeyPrefixToString(_prefix), _v.value);
			}
			_prefix.splice(_prefix.length - 1, 1);
		}
		else {
			post("[postTree(_v)] something goes wrong: _v = " + _v + "\n");
		}
	}
}

function isValueComplex(_value) {
	if(_value === null) return false;
	if(_value.length < 2) return false; // eg. "{}" is ok ???
	if(_value[0] == "{") return true;
	if(_value[0] == "[") return true;
	return false;
}

function parseLine(_line) {
	//post("line: " + _line + "\n");
	var result = [];
	var pairs = convertLineToArrayOfKeyAndValuePairs(_line);
	for(var i = 0; i < pairs.length; i++) {
		if(isValueComplex(pairs[i].value)) {
			result[result.length] = {
				key: pairs[i].key,
				value: parseLine(pairs[i].value)
			};
		}
		else {
			result[result.length] = pairs[i];
		}
	}
	return result;
}

function checkParamForMarker(_type, _markers, _char) { //_type 0 = opening, _type 1 = closing
	if(_type > 0) _type = 1; else _type = 0;
	for(var i = 0; i < _markers.length; i++) {
		if(_markers[i][_type] == _char) return i;
	}
	return -1;
}

function tryToConvertToNumber(_v) {
	if(_v === null) return null;
	if(_v.length < 1) return _v;
	if(isValueComplex(_v)) return _v;
	var n;
	if(_v.indexOf(".") < 0) n = parseInt(_v); else n = parseFloat(_v);
	if(isNaN(n)) return _v;
	return n;
}

function removeQuotationMarks(_v) {
	if(_v === null) return null;
	if(_v.length < 2) return _v;
	if(isValueComplex(_v)) return _v;
	if(_v[0] == "\"" && _v[_v.length - 1] == "\"") {
		return _v.substring(1, _v.length - 1);
	}
	return _v;
}

function convertLineToArrayOfKeyAndValuePairs(_line) {
	var VALUE_MARKERS = [["\"", "\""], ["{", "}"], ["[", "]"]];
	var STATUS_SEARCHING_FOR_KEY = 0;
	var STATUS_PARSING_KEY = 1;
	var STATUS_SEARCHING_FOR_VALUE = 2;
	var STATUS_PARSING_VALUE = 3;
    var result = [];
    var current_status = STATUS_SEARCHING_FOR_KEY;
	var temp_key = ""; var temp_value = ""; var temp_key_marker_counter = {type_index: -1, iterations: 0};
	for(var i = 0; i < _line.length; i++) {
		switch(current_status) {
			case STATUS_SEARCHING_FOR_KEY:
				if(_line[i] == "\"") {
					temp_key = ""; temp_value = "";
					temp_key_marker_counter.type_index = -1;
					temp_key_marker_counter.iterations = 0;
					current_status = STATUS_PARSING_KEY;
				}
			break;
			case STATUS_PARSING_KEY:
				if(_line[i] == "\"") {
					current_status = STATUS_SEARCHING_FOR_VALUE;
				}
				else {
					temp_key += _line[i];
				}
			break;
			case STATUS_SEARCHING_FOR_VALUE:
				var temp_n = checkParamForMarker(0, VALUE_MARKERS, _line[i]); // check for opening marker
				if(temp_n >= 0) {
					temp_key_marker_counter.type_index = temp_n;
					temp_key_marker_counter.iterations = 1;
					current_status = STATUS_PARSING_VALUE;
					temp_value += _line[i];
				}
				else {
					if(isNaN(parseInt(_line[i]))) {
						// nothing to do
					}
					else {
						temp_key_marker_counter.type_index = -1;
						temp_key_marker_counter.iterations = 0;
						current_status = STATUS_PARSING_VALUE;
						temp_value += _line[i];
					}
				}
			break;
			case STATUS_PARSING_VALUE:
				if(temp_key_marker_counter.type_index < 0) {
					if(isNaN(parseInt(_line[i])) && _line[i] != ".") {
						if(temp_key.length > 0) {
							temp_value = removeQuotationMarks(temp_value);
							temp_value = tryToConvertToNumber(temp_value);
							result[result.length] = {key: temp_key, value: temp_value};
						}
						else {
							// parsing error or data format error?
						}
						current_status = STATUS_SEARCHING_FOR_KEY;
					}
					else {
						temp_value += _line[i];
					}
				}
				else {
					var temp_n = checkParamForMarker(1, VALUE_MARKERS, _line[i]); // check for closing marker
					if(temp_n == temp_key_marker_counter.type_index) {
						if(temp_key_marker_counter.iterations == 1) {
							if(temp_key.length > 0) {
								temp_value += _line[i];
								temp_value = removeQuotationMarks(temp_value);
								temp_value = tryToConvertToNumber(temp_value);
								result[result.length] = {key: temp_key, value: temp_value};
							}
							else {
								// parsing error or data format error?
							}
							current_status = STATUS_SEARCHING_FOR_KEY;
						}
						else {
							if(temp_key_marker_counter.iterations > 1) {
								temp_key_marker_counter.iterations -= 1;
								temp_value += _line[i];
							}
							else {
								// parsing error or data format error?
								current_status = STATUS_SEARCHING_FOR_KEY;
							}
						}
					}
					else {
						var temp_n = checkParamForMarker(0, VALUE_MARKERS, _line[i]); // check for opening marker
						if(temp_n == temp_key_marker_counter.type_index) {
							temp_key_marker_counter.iterations += 1;
						}
						else {
							// nothing to do
						}
						temp_value += _line[i];
					}
				}
			break;
			default: // ???
		}
	}
    return result;
}