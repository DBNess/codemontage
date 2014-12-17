class UserProfile < ActiveRecord::Base
  belongs_to :user
  acts_as_ordered_taggable
  acts_as_ordered_taggable_on :technologies, :causes
  attr_accessible :gravatar_email, :headline, :is_coder, :name, :represents_org,
                  :represents_team, :cause_list, :technology_list, :email_news, :email_training

  validates :headline, length: { maximum: 128 }
end
