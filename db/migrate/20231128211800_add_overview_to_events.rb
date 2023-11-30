class AddOverviewToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :overview, :text
  end
end
