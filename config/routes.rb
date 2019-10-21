Rails.application.routes.draw do
    root to: "main#home"
    get '/magic8ball' => 'main#magic8ball'
    get '/game' => "main#high_low"
    get '/answers' => "main#answers"
    get '/madlibs' => "main#madlibs"
end
