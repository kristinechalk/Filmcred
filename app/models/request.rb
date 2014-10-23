class Request < ActiveRecord::Base
  belongs_to :worker, class_name: "Worker", foreign_key: "worker_id"
  belongs_to :company, class_name: "Company", foreign_key: "company_id"
end