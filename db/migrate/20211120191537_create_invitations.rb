class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :doc_id
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end
