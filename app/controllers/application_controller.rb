class ApplicationController < ActionController::Base
    def blank_square_form
        render({ :template => "calc_templates/square_form.html.erb", })
    end
    def result_square_form
        @number = params.fetch("number").to_f
        @square = @number * @number
        render({ :template => "calc_templates/square_results.html.erb", })
    end
end
