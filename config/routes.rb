Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do 
    get "/name_url" => "games#name_action"
    get "/guess_number_url" => "games#guess_number_action"
    # get "/first_letter" => "games#first_letter_action"
    get "/segment_guessing/:number" => "games#segment_param"
  end 
end
