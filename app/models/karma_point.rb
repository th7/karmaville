class KarmaPoint < ActiveRecord::Base
  attr_accessible :user_id, :label, :value
  belongs_to :user

  validates :user, :presence => true
  validates :value, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :label, :presence => true

  after_save :update_user_total_karma
  # after_create :update_user_total_karma

  def update_user_total_karma
    self.user.update_total_karma
  end
end
