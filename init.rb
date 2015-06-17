Redmine::Plugin.register :redmine_delivery_list do
  name 'Redmine Delivery List plugin'
  author 'altec corp'
  description 'This is a plugin for Redmine to disp Delivery date List'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  
  project_module :delivery_list do
    permission :view_delivery_list, :delivery_list => [:index, :show]
    permission :manage_delivery_list, :delivery_list => [:new, :edit, :create, :update, :destroy, :preview],
    :require => :member
  end
  
end
