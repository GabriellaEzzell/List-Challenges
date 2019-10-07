
def threed(list) # done

    count = 0
    list.each do |n| # count how many 3's exist in the list
        if n == 3
            count += 1
        end
    end

    if count == 3
        (list.size - 1).times do |i|
            if list[i] == 3 && list[i + 1] == 3
                return false
            end
        end
    end
    
    return true

end

# puts threed([3, 2, 3, 3, 2]) # false
# puts threed([3, 1, 3, 1, 3]) # true
# puts threed([3, 5, 2, 8, 3, 3]) # false
# puts threed([2, 2, 3, 1, 3, 1, 3]) # true

def same_first_last(list) # done
    if list.size < 1
        return false
    end

    if list[0] != list[list.size - 1]
        return false
    end
    
    return true
end

# puts same_first_last([2, 5, 3, 7, 3, 8, 2, 6, 2, 8]) # false
# puts same_first_last([4, 6, 2, 8, 3, 7, 4]) # true
# puts same_first_last([2]) # true

def get_sandwich(str) # needs some work
    (str.size - 4).times do |i|
        slice = str[i..(i + 4)]
        if slice != "bread"
            puts slice
        end
    end

end

# puts get_sandwich("breadjambread") # "jam"


def shift_left(list) # needs some work
    if list.size >= 1
        list.each do |i|
            list[i] = list[i 1]
        end
    end

    print list

end

# print shift_left([6, 2, 5, 3]) # [2, 5, 3, 6]

def can_balance(list)

end


def g_happy(str) # done
    (str.size - 3).times do |i|
        if str[i] == "g" && str[i + 1] == "g"
            return true
        end
    end
    
    return false
end

# puts g_happy("gghggghgg") # true
# puts g_happy("ghg") # false
# puts g_happy("ggggggg") # true
# puts g_happy("hgpihgipufhighpir") # false

def either_2_4(list)
    (list.size - 1).times do |i|
        if list[i] = 2 && list[i + 1] = 2 && list[i] = 4 && list[i + 1] = 4
            return false
        end

        if list[i] = 2 && list[i + 1] = 2 ^ list[i] = 4 && list[i + 1] = 4
            return true
        end
    end

    return false

end

puts either_2_4([1, 2, 3, 4, 4]) # true
puts either_2_4([2, 2, 3, 3, 4, 4]) # false
puts either_2_4([1, 3, 2, 2]) # true