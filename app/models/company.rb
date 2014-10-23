class Company < User
  has_many :requests
  has_many :documents
end