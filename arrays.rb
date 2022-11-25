nums = [1,4,5,8,7,9,4,3,5];
recipe = ["this","is","a","new","recipe"]

nums.last
nums.shuffle
nums.shuffle!

x = (1..10).to_a
 x.reverse
 x
 x.reverse!
 x

for i in nums
    # p nums
end

for i in nums 
    if i > 6
        # p i
    end
end

recipe.each do |this|
    # print this + " "
end

# recipe.each {|food| puts food.capitalize + " "}

result = nums.select {|n| n.odd?}
# p result

food = ["This","is","some","nice","food"];

food.each do |meal|
#   p meal.capitalize
end

# Tip calculator
# - function to check if Anne works there
# - check how much she makes when she sells above
#   50 and not more than 300, 20% btn and 7% on other
# - Add new order and get its tip

als = ["Ali","Ben","Jon","Anne","Josh"]
orders = [23,56,89,65,12,23,300,699]

def check(user)
  user.each do |u|
    if u === "Anne"
      p "#{u} works here!"
    end
  end
end
# check(als)

def tips(order)
  order.each do |ord|
    if ord <= 50
      p "#{ord} ===> #{ord * 0.20}"
    elsif ord >= 300
      p "#{ord} ===> #{ord * 0.7}"
    end
  end
end
tips(orders)