class CreateSubmissions < ActiveRecord::Migration[5.2]
  enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  def change
    create_table :submissions, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.date :submitted_on
      t.string :state

      t.timestamps
    end
    add_index :submissions, :submitted_on
    add_index :submissions, :state
  end
end
