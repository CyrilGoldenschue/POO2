

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

def file_start_with_depth(from, to, start, path, n = 0)
    Dir["#{path}/*"].each do |f|
      puts f if n.between?(from, to) && File.basename(f).start_with?(start)
      file_start_with_depth(from, to, start, f, n + 1) if File.directory?(f)
    end
  end

#p "Part 1"
#puts findAllFilePathsStartingWith("read", "data")
p "Part 2"
file_start_with_depth(2, 3, "read", "data")

