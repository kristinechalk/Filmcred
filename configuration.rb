require 'active_record'
require 'factory_girl'
require 'faker'
require 'pry'
require 'carrierwave'
require 'carrierwave/orm/activerecord'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => "db/db.sqlite3"
 
)

require_relative 'app/models/file_uploader'
require_relative 'app/models/user'
require_relative 'app/models/worker'
require_relative 'app/models/company'
require_relative 'app/models/document'
require_relative 'factories/companies_factory'
require_relative 'factories/workers_factory'


# Note: add any other models / classes that need to be required here (eg: Teacher)
