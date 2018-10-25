def countingValleys(_, s)
  arr = s.split ''
  valleys = 0
  position = 0
  arr.each do |item|
    position += 1 if item == 'U'
    position += -1 if item == 'D'
    if item == 'U' and position == 0
      valleys += 1
    end
  end
  valleys
end
