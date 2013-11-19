class User
	attr_protected :provider, :uid, :name, :email
	
	include Mongoid::Document
	field :provider, type: String
	field :uid, type: String
	field :name, type: String
	field :email, type: String
end
