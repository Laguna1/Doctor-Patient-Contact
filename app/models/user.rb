# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :role, optional: true
  has_many :patient_relationships, foreign_key: :doctor_id, class_name: 'ContactWithDoc'
  has_many :patients, through: :patient_relationships, source: :patient

  has_many :doctor_relationships, foreign_key: :patient_id, class_name: 'ContactWithDoc'
  has_many :doctors, through: :doctor_relationships, source: :doctor

  before_save :assign_role

  def assign_role
    self.role = Role.find_by name: 'Patient' if role.nil?
  end

  def admin?
    role.name == 'Admin'
  end

  def doctor?
    role.name == 'Doctor'
  end

  def patient?
    role.name == 'Patient'
  end

  def book_doctor(user_id)
    doctor_relationships.create(doctor_id: user_id)
  end

  def unbook_doctor(user_id)
    doctor_relationships.find_by(doctor_id: user_id).destroy
  end
end
