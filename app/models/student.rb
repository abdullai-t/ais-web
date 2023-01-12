class Student < ApplicationRecord
    before_validation :set_defaults
    has_one_attached:image

    validates :first_name, presence: true
    validates :contact, presence: true
    validates :surname, presence: true

    def set_defaults
        self.ref_number = SecureRandom.alphanumeric(7).upcase()
        self.enrolled_at = DateTime.current.to_date
    end
end
