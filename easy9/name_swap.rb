def swap_name(name)
  swap = name.split
  "#{swap[-1]}, #{swap[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'