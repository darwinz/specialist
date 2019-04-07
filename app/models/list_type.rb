class ListType < ApplicationRecord
  has_many :list

  def destroy
    update_attribute(:active, 0)
  end

  def delete
    update_attribute(:active, 0)
  end
end
