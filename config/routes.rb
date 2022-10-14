Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    post 'weather_now', to: 'weather#now'
  end
end
