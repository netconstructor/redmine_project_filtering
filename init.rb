require 'redmine'


# will not work on development mode
require 'with_custom_values'
require 'patches/projects_helper_patch'
require 'patches/custom_field_patch'
require 'patches/project_patch'
require 'patches/projects_controller_patch'
require 'patches/settings_controller_patch'


Redmine::Plugin.register :redmine_project_filtering do
  name 'Redmine Project filtering plugin'
  author 'Enrique García Cota'
  url 'http://development.splendeo.es/projects/redm-project-filter'
  author_url 'http://www.splendeo.es'
  description 'Adds filtering capabilities to the the project/index page'
  version '0.9'

  settings({
    :partial => 'settings/redmine_project_filtering',
    :default => { 'used_fields' => {} }
  })

end
