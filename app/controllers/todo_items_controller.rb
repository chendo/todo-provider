class TodoItemsController < InheritedResources::Base
  before_filter :authenticate_user!
  
  def create
    create! do |success, failure|
      success.html { redirect_to root_path }
    end
  end
  
end