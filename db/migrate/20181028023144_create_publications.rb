class CreatePublications < ActiveRecord::Migration[5.2]
  enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  def change
    create_table :publications, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :name

      t.timestamps
    end
  end
end
