$(document).on("blur", ".check_validation", function(event){
	field_name = $(this).attr('name')
	attr_name = field_name.match(/\[(.*?)\]/)[1]
	model = field_name.split('[')[0]
	value = $(this).val()
	_this = $(this)
	$.ajax({
		url: "/validate_field", //sumbits it to the given url of the form
		data: {field_name: field_name, model: model, value: value}
	}).success(function(data){
		_error = _this.parent().find("div.error")
		_error.remove()
		if (data.valid != true){
			_msg = humanize(field_name) + ' ' + data.valid[0]
			_error = "<div class = 'error'>" + _msg + "</div>"
			_this.parent().append(_error)
		}else{
			_span.html('')
		}
	});
});

$(document).on("click", ".submit-modal", function(event){
	model = $(this).data('model');
	form = 	$('.validate-form')
	valuesToSubmit = form.serialize();
	valuesToSubmit += "&model="+model
	if (form.attr('id').match('edit_')){
		id = form.attr('action').split('/')[2]
		valuesToSubmit += "&existing_record=" + true + "&id=" + id
	}
	$.ajax({
		url: "/validate_model", //sumbits it to the given url of the form
		data: valuesToSubmit,
	}).success(function(data){
		if (data.valid != true){
			$.each(data.keys, function( index, value ) {
				_parent = $(field_id).parent()
				field_id = '#' + model + '_' + value
				_msg = humanize(value) + ' ' + data.obj[value]
				_parent.find("div.error").remove()
				_error = "<div class = 'error'>" + _msg + "</div>"
				_parent.append(_error)
			});
		}else{
			$('form.validate-form').submit();
		}
	});
});


ucwords = function(str) {
	return (str + '').replace(/^([a-z])|\s+([a-z])/g, function ($1) {
		return $1.toUpperCase();
	});
}

humanize = function(str){
	return ucwords(str).replace(/_/g, ' ')
}