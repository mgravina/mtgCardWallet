class User
  attr_accessor :name, :email
  
 # initialize method is called when user.new is

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end