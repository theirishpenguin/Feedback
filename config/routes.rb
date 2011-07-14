Rails.application.routes.draw do |map|

  mount_at = Feedback::Engine.config.mount_at

  #match mount_at => 'cheese/widgets#index'

  match mount_at => 'feedback/feedback#new'

  map.resource :feedback, :only => [ :new ],
                          :controller => "feedback/feedback",
                          :path_prefix => mount_at,
                          :name_prefix => "feedback_"

#  map.resources :widgets, :only => [ :index, :show ],
#                          :controller => "cheese/widgets",
#                          :path_prefix => mount_at,
#                          :name_prefix => "cheese_"

end
