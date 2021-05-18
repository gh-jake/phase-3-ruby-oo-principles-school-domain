# code here!
require 'pry'

class School
    attr_accessor :name
    attr_accessor :roster
   
    def initialize(name)
        @name = name
        @roster = {}
    end

    

    def add_student(name, grade)
        # if @roster.key?(grade)
        #     @roster[grade] << name
        # else
        #     @roster[grade] = []
        #     @roster[grade] << name
        # end
        # binding.pry
        roster[grade] ||= []
        roster[grade] << name

    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, names|
            sorted_roster[grade] = names.sort
        end
        sorted_roster
    end

end