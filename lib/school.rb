# code here!
class School

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, student_grade)
        if @roster.has_key?(student_grade) == true   
            @roster[student_grade] << student_name
        else 
            new_grade = student_grade
            @roster[new_grade] = []
            @roster[new_grade] << student_name
        end
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        sorted = {}
        @roster.each do |grade, student|
            sorted[grade] = student.sort
        end
        sorted
    end
end