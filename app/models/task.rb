class Task < ApplicationRecord
  belongs_to :model

  def self.find_incomplete
    find_all_by_complete(flase, :order => 'created_at DESC')
  end
end
