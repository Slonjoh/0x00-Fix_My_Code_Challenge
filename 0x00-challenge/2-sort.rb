###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # convert to integer
    i_arg = arg.to_i
    # skip if not integer
    next if i_arg.nil?

    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

puts result
