class TodoItemsController < InheritedResources::Base
  respond_to :html, :xml, :json
  before_filter :login_or_oauth_required
  
  
  def create
    create! do |success, failure|
      success.html { redirect_to root_path }
    end
  end
  
  protected
    def begin_of_association_chain
      current_user
    end
end
