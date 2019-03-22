class List < ApplicationRecord
  belongs_to :list_type

  def destroy
    update_attribute(:active, 0)
  end

  def delete
    update_attribute(:active, 0)
  end
end
