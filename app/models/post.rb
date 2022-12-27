class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  
  def categories_attributes=(categories_attributes)
    categories_attributes.values.each do |category_attribute|
      if category_attribute[:name].present?
      category = Category.find_or_create_by(category_attribute) 
      self.categories << category
      end
      # self.post_categories.build(category: category)
    end
  end

  # def user_attributes=(user_attributes)
  #   self.user = User.where(:username => user_attributes[:username]).first_or_create do |u|
  #     u.email = user_attributes[:email]
  #   end
  # end

  # def user_attributes=(user_attributes)
  #   user_attributes.values.each do |user_attribute|
  #     user = User.find_or_create_by(user_attribute)
  #     self.users << user
  #     # self.post_user.build(user: user)
  #   end
  # end

end
