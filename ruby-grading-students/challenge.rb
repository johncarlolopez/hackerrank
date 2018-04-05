# HackerLand University has the following grading policy:
#
# Every student receives a  in the inclusive range from  to .
# Any  less than  is a failing grade.
# Sam is a professor at the university and likes to round each student's  according to these rules:
#
# If the difference between the  and the next multiple of  is less than , round  up to the next multiple of .
# If the value of  is less than , no rounding occurs as the result will still be a failing grade.
# For example,  will be rounded to  but  will not be rounded because the rounding would result in a number that is less than .
#
# Given the initial value of  for each of Sam's  students, write code to automate the rounding process. Complete the function solve that takes an integer array of all grades, and return an integer array consisting of the rounded grades. For each , round it according to the rules above and print the result on a new line.
#
# Input Format
#
# First Line
#
# integer
# : number of students
# Next  lines
#
# integer
# : individual grades
# Output Format
#
# Print  lines, each with the rounded value of a student’s grade in input order.
#
# Sample Input 0
#
# 4
# 73
# 67
# 38
# 33
# Sample Output 0
#
# 75
# 67
# 40
# 33

def gradingStudents(grades)
  grades.map { |grade|
    if grade > 37
      div_of_five = grade / 5
      grade % 5 > 2 ? (div_of_five + 1) * 5 : grade
    else
      grade
    end
  }
end
