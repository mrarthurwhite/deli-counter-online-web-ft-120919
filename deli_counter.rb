
katz_deli = []

def line(q)
    if (q.empty?) 
        puts "The line is currently empty."
    else
        line_info = "The line is currently:"
        q.each.with_index(1) do |name, i|
            line_info << " #{i}. #{name}"
        end
        puts line_info
    end
end

#
def take_a_number(q, name)
    q<<name
    i = q.index(name) + 1
    puts "Welcome, #{name}. You are number #{i} in line."
end

#
def now_serving(q)
    if (q.empty?) 
        puts "There is nobody waiting to be served!"
    else
        first_in_line = q.shift
        puts "Currently serving #{first_in_line}."
    end
end

line(katz_deli)
take_a_number(katz_deli, "Grace")
take_a_number(katz_deli, "Art")
line(katz_deli)
now_serving(katz_deli)