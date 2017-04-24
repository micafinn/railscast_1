class Task < ApplicationRecord
  belongs_to :model

  def self.find_incomplete(options = {})
    find_all_by_complete(false, :order => 'created_at DESC')
  end
end
