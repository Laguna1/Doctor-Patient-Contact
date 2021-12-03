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


    def docs
      docs_i_sent_invitation = Invitation.where(user_id: id, confirmed: true).pluck(:doc_id)
      docs_i_got_invitation = Invitation.where(doc_id: id, confirmed: true).pluck(:user_id)
      ids = docs_i_sent_invitation + docs_i_got_invitation
      User.where(id: ids)
    end
  
    def doc_with?(user)
      Invitation.confirmed_record?(id, user.id)
    end
  
    def send_invitation(user)
      invitations.create(doc_id: user.id)
    end
end
