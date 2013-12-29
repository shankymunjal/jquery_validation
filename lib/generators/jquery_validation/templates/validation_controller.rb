class ValidationController < ApplicationController

	def validate_field
		_valid = params[:model].classify.constantize.valid_attribute?(params[:field_name], params[:value])
		render :json => { :valid => _valid}
	end

	def validate_model
		if params[:existing_record]
			@entity = params[:model].classify.constantize.find(params[:id])
			@entity.update_attributes(params[params[:model].to_sym])
		else
			@entity = params[:model].classify.constantize.new(params[params[:model].to_sym])
		end					
		if @entity.valid?
			_valid = true
		else
			_valid = false
			_keys = @entity.errors.keys
			_obj = @entity.errors
		end
		render :json => { valid: _valid, keys: _keys, obj: _obj}
	end

end
