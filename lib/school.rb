# code here!
class School
    attr_reader :name, :roster
   def initialize(name)
    @name = name
    @roster = Hash.new { |hash,key| hash[key] =[]}
   end 

   def add_student(student, grade)
       @roster[grade] << student
   end

   def grade(grade)
        if(@roster.key?(grade))
            @roster[grade]
        end 
   end 

   def sort
        @roster.sort
   end

   
end

high_school = School.new("Charls Highest")
high_school.add_student("Jeff Baird", 10)
high_school.add_student("Max Flombaum", 10)
high_school.add_student("Avi Flombaum", 9)
high_school.add_student("Bob tim", 3)


# puts high_school.roster
puts high_school.grade(10)