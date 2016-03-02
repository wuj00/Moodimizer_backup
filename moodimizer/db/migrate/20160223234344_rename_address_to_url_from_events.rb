class RenameAddressToUrlFromEvents < ActiveRecord::Migration
  def change
    rename_column :events, :address, :url
  end
end
