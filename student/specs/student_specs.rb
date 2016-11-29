require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class StudentSpec < MiniTest::Test

def test_can_create_student
student= Student.new("Andy", 9, "Ruby")
assert_equal(Student, student.class)
end

def test_get_student
student= Student.new("bob", 7, "Java")
assert_equal("bob", student.student)
end

def test_get_cohort 
student= Student.new("Andy", 9, "php")
assert_equal(9, student.cohort)
end

def test_student_talk 
student= Student.new("jim", 9, "python")
assert_equal("I can talk !", student.talk)
end

def test_get_favourite_language 
student= Student.new("jim", 9, "ruby")
assert_equal("I love ruby", student.get_favourite_language)
end

def test_set_student
student= Student.new("jim", 9, "ruby")
student.set_student("fred")
assert_equal("fred", student.student)
end

def test_set_student
student= Student.new("Andy", 9, "ruby")
student.set_cohort(3)
assert_equal(3, student.cohort)
end
end