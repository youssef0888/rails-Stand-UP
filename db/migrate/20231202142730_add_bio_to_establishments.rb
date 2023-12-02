class AddBioToEstablishments < ActiveRecord::Migration[7.0]
  def change
    add_column :establishments, :bio, :text
  end
end
