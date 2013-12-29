module JqueryValidation
	module ValidateModel
		def valid_attribute?(_attr, value)
			mock = self.new(_attr => value)
			if mock.valid?
				true
			else
				if mock.errors.has_key?(_attr.to_sym)
					mock.errors[_attr.to_sym]
				else
					true
				end
			end
		end

	end
end