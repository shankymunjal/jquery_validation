require "jquery_validation/validate_model"
module JqueryValidation
  class Railtie < Rails::Railtie
    initializer "jquery_validation.validate_model" do |app|
      ActiveSupport.on_load :active_record do
      	extend ValidateModel
      end
    end
  end
end