class CreateImportResults < ActiveRecord::Migration
  def change
    create_table :import_results do |t|
      t.references  :import, index: true, foreign_key: true
      t.datetime    :source_data_modified
      t.datetime    :start_time
      t.datetime    :end_time
      t.text        :found_listing_keys
      t.text        :removed_listing_keys

      t.timestamps null: false
    end
  end
end
