# frozen_string_literal: true

class CreateContactWithDocs < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_with_docs do |t|
      t.integer :patient_id, null: false
      t.integer :doctor_id, null: false

      t.timestamps
    end

    add_index :contact_with_docs, :patient_id
    add_index :contact_with_docs, :doctor_id
    add_index :contact_with_docs, %i[patient_id doctor_id], unique: true
  end
end
