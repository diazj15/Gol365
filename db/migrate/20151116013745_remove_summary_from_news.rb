class RemoveSummaryFromNews < ActiveRecord::Migration
  def change
    remove_column :news, :summary, :string
  end
end
