class User < ApplicationRecord

  def full_name

    [first_name, middle_initial_with period, last_name].compact.join(' ')
  end

  def middle_initial_with_period
    "#{middle_initial}." unless middle_initial.nil?
  end
end
