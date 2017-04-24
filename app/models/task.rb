class Task < ApplicationRecord
  belongs_to :model

  def self.find_incomplete(options = {})
    with_scope :find => options do
      find_all_by_complete(false, :order => 'created_at DESC')
    end 
  end
end
