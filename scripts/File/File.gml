
function ArrayToFile(_filename, _data, _func){
	var _file = file_text_open_write(_filename);
	file_text_write_string(_file, script_execute(_func,_data));
	file_text_close(_file);
}

function FileToArray(_filename, _func){
	var _file, _json_string;
	if file_exists(_filename) {
		_file = file_text_open_read(_filename);
		_json_string = "";
		while (!file_text_eof(_file)) {
		    _json_string += file_text_read_string(_file);
			file_text_readln(_file);
		}
		file_text_close(_file);
		return script_execute(_func, _json_string);
	}
	return undefined;
}