class Student

  def initialize(student, cohort, language)
    @student = student
    @cohort = cohort
    @language = language

  end

def student
return @student
end

def set_student(student)
@student = student
end

def cohort
return @cohort
end

def set_cohort(cohort)
@cohort = cohort
end

def talk
return "I can talk !"
end

def get_favourite_language
return "I love " + @language
end


end