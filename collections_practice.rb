def sort_array_asc(array)
    array.sort do |a, b|
        a <=> b
    end
end

def sort_array_desc(array)
    array.sort do |a, b|
        if a == b 
            0
        elsif a < b
            1
        else 
            -1
        end
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        if a.length == b.length
            0
        elsif a.length < b.length 
            -1
        else 
            1
        end
    end
end

def swap_elements(array)
    array.sort do |a, b|
        if array.index(a) == 1 && array.index(b) == 2
            1
        else
            0
        end
    end
end

def reverse_array(array)
    array.sort do |a, b|
        if array.index(a) > array.index(b)
            -1
        else
            1
        end
    end
end   

def kesha_maker(array)
    kesha_array = []
    array.each do |name|
        kesha_array << name.sub("#{name[2]}", "$") 
    end
    kesha_array
end

def find_a (array)
    array.select do |string|
        string.start_with?("a")
    end
end

def sum_array (array)
    array.inject(:+)
end

def add_s (array)
    plurals = []
    array.each do |word|
        if array.index(word) == 1
            plurals << "#{word}"
        else plurals << "#{word}s"
        end
    end
    plurals
end 


