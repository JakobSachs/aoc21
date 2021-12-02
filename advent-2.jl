module Day2
  global horizontal
  global depth 

  function main()
    local horizontal_l = 0
    local depth_l = 0

    local aim_l = 0
    for l in eachline("input_day2.txt")
      if l[1] == 'u'
        aim_l -= parse(Int,last(l,2))
      elseif l[1] == 'd'
        aim_l += parse(Int,last(l,2))
      elseif l[1] == 'f'
        horizontal_l += parse(Int,last(l,2))
        depth_l += (aim_l * parse(Int,last(l,2)))
      end
    end

    global horizontal = horizontal_l
    global depth = depth_l
  end

  function output()
    println("Horizontal: $horizontal Depth: $depth")
    println("Total: $(horizontal * depth)")
  end
end

Day2.main()
Day2.output()