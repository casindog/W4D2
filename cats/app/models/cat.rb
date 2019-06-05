# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string
#  name        :string           not null
#  sex         :string(1)
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  validates :color, inclusion: { in: %w(white black orange grey pink), 
            message: "%(value) is not a valid color"}
  validates :sex, inclusion: { in: %w(M F),
            message: "%(value) is not a valid sex"}



  def age
    ((Date.today - self.birth_date)/365).to_i
  end


end
