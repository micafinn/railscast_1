class User < ApplicationRecord

  def full_name

    [first_name, middle_initial, last_name].compact.join(' ')
    name = first_name + " "
    name += "#{middle_initial}. " unless middle_initial.nil?
    name += last_name
    name
  end
end
