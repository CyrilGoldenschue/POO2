

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

    i = 0

    Dir.each_child("#{path}/") do |x|
        newpath = "#{path}/#{x}"
        i += 1

        
        p ("#{i} >= #{fromDepth} : #{i == fromDepth}")

        next if(i != fromDepth) 

        if(i == fromDepth)
            p newpath
            if(File.directory?(newpath))
                arrayList.concat(findAllFilePathsOfDepthStartingWithNext(newpath.split("/").length, toDepth, starts, newpath))
            else
                if(x.start_with?(starts))
                    arrayList.push(newpath)
                end
            end
        end
    end

     return arrayList
end

def findAllFilePathsOfDepthStartingWithNext(actualDepth, toDepth, starts, path)
    p actualDepth
    arrayList = []
    Dir.each_child("#{path}/") do |x|
        newpath = "#{path}/#{x}"
        i += 1

        
        p ("#{i} >= #{fromDepth} : #{i == fromDepth}")

        next if(i != fromDepth) 

        if(i == fromDepth)
            p newpath
            if(File.directory?(newpath))
                arrayList.concat(findAllFilePathsOfDepthStartingWithNext(newpath.split("/").length, toDepth, starts, newpath))
            else
                if(x.start_with?(starts))
                    arrayList.push(newpath)
                end
            end
        end
    end

     return arrayList

end

#p "Part 1"
#puts findAllFilePathsStartingWith("read", "data")

p "Part 2"
puts findAllFilePathsOfDepthStartingWith(2, 3, "read", "data")
