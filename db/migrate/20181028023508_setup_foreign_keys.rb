class SetupForeignKeys < ActiveRecord::Migration[5.2]
  enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  def change
    add_column :submissions, :work_id, :uuid
    add_column :submissions, :publication_id, :uuid
    add_foreign_key :submissions, :works
    add_foreign_key :submissions, :publications
  end
end
