

def findAllFilePathsStartingWith(starts, path)
    arrayList = []

    Dir.each_child("#{path}/") { |x|
        newpath = "#{path}/#{x}"
        if(File.directory?(newpath))
            arrayList.concat(findAllFilePathsStartingWith(starts, newpath))
        else
            if(x.start_with?(starts))
                arrayList.push(newpath)
            end
        end
    }

     return arrayList
end

def findAllFilePathsOfDepthStartingWith(fromDepth, toDepth, starts, path)
    arrayList = []

    Dir.each_child("#{path}/") { |x|
        newpath = "#{path}/#{x}"
        if(File.directory?(newpath))
            arrayList.concat(findAllFilePathsStartingWith(starts, newpath))
        else
            if(x.start_with?(starts))
                arrayList.push(newpath)
            end
        end
    }

     return arrayList
end

p "Part 1"
puts findAllFilePathsStartingWith("read", "data")

p "Part 2"
puts findAllFilePathsOfDepthStartingWith(2, 3, "read", "data")
