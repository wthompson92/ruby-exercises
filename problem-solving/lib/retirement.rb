class Retirement
  def calculate(age, retirement_age)
    if age > 0 && retirement_age > 0
    num = (retirement_age - age)
    ans = "You have #{num.to_s} years left until you can retire. It is 2015, so you can retire in #{2015 + num}."
  elsif age < 0
    ans =  "Error. Age cannot be negative."
  elsif retirement_age < 0
  ans =  "Error. Retirement age cannot be negative."
end
end
end
