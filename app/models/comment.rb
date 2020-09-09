class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc {|attributes| attributes['username'].blank?}

  def user_attributes(user_attribute)
    user_attribute.values.each do |user|
      if user[:username].present?
        u = User.find_or_create_by(user)

        if !self.user = u
          self.build_user(:username => u[:username])
        end
      end
    end
  end
  
end
