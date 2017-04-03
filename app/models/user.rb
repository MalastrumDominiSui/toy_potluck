class User < ActiveRecord::Base
	has_many :potlucks, dependent: :destroy
end
