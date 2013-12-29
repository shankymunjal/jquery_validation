# JqueryValidation

This gem will validates the form asynchronously. 

## Installation

Add this line to your application's Gemfile:

    gem 'jquery_validation'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jquery_validation

## Usage

Execute:

		$ rails g jquery_validation

Above command will add inline_validate.js file in your assets/javascripts folder and validation_controller.rb in controllers.

Add 'validate-form' class to the form 
'check_validation' class to the attribute 
and 'submit-modal' class to the submit button.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
