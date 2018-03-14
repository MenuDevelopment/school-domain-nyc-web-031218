# code here!

class School
  attr_accessor :name, :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

  def grade (grade)
    @roster[grade]
  end

  def add_student (name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def sort
    sorted_roster = {}
    @roster.collect do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end

end
