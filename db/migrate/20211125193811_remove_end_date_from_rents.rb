class RemoveEndDateFromRents < ActiveRecord::Migration[6.1]
  def change
    remove_column :rents, :end_date
  end
end
