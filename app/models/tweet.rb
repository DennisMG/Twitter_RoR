class Tweet < ActiveRecord::Base
	validates :content, presence: true, length: { minimum: 5 }
	belongs_to :user
	default_scope order('created_at DESC')

	def decorate_created_at
    created_at.strftime(" %B %d, %Y %l:%M %p")
  end

  def get_owner(id)
      @user = User.find(id)
      @user.name
  end

end
