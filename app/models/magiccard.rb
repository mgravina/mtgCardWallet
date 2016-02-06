class Magiccard < ActiveRecord::Base
has_and_belongs_to_many :collectionsdetails
end