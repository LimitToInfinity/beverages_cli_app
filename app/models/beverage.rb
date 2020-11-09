class Beverage < ActiveRecord::Base

  def self.all_beverage_names
    all.pluck(:name)
  end

end