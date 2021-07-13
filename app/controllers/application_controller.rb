class ApplicationController < ActionController::Base
    def blank_square_form
        render({ :template => "calc_templates/square_form.html.erb", })
    end
    def result_square_form
        @number = params.fetch("number").to_f
        @square = @number * @number
        render({ :template => "calc_templates/square_results.html.erb", })
    end
    def blank_square_root_form
        render({ :template => "calc_templates/square_root_form.html.erb", })
    end
    def result_square_root_form
        @number = params.fetch("number").to_f
        @sqrt = Math.sqrt(@number)
        render({ :template => "calc_templates/square_root_results.html.erb", })
    end

    def blank_random_form
        render({ :template => "calc_templates/random_form.html.erb", })
    end

    def result_random_form
        @min = params.fetch("user_min").to_f
        @max = params.fetch("user_max").to_f
        @rand = rand(@min..@max.to_f)
        render({ :template => "calc_templates/random_results.html.erb"})
    end

end
