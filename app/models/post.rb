class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  
  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attributes|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
      # self.post_categories.build(category: category)
    end
  end

  def comments_attributes=(comment_attributes)
    comment_attributes.values.each do |comment_attributes|
      comment = Comment.find_or_create_by(comment_attribute)
      self.comments << comment
      # self.post_comments.build(comment: comment)
    end
  end

end
