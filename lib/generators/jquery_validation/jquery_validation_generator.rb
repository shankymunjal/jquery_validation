class  JqueryValidationGenerator < Rails::Generators::Base
	source_root File.expand_path("../templates", __FILE__)
  desc "This generator installs jquery validation to Asset Pipeline"

	def add_assets
		copy_file "inline_validate.js", "app/assets/javascripts/inline_validate.js"
		copy_file "validation_controller.rb", "app/controllers/validation_controller.rb"
	end
end