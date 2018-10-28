class CreateWorks < ActiveRecord::Migration[5.2]
  enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  def change
    create_table :works, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :title
      t.date :authored_on

      t.timestamps
    end
    add_index :works, :title
  end
end
