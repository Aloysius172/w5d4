# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many :enrolled_courses,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment

    has_many :enrollments,
        through: :enrolled_courses,
        source: :course

    # def enrolled_courses
    #     self.enrollments = courses
    # end


end
