class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, reject_if: :all_blank


  def comment_content=(comment_attributes)
    comment_attributes.values.each do |comment_attribute|
      comment = Comment.create(comment_attribute)
      self.post_comments.build(comment: comment)
    end
  end


end
