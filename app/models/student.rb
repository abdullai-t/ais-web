class Student < ApplicationRecord
    before_validation :set_defaults
    has_one_attached:image

    def set_defaults
        self.ref_number = SecureRandom.alphanumeric(7).upcase()
        self.enrolled_at = DateTime.current.to_date
    end
end
