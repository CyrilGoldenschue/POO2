class LinkedList

    attr_reader :size
  
    def initialize
      @size = 0
      @text = ""
    end
    
    def empty?
      @size == 0
    end

    def add_head(value)
        @text = value + @text
        @size += 1
    end

    def add_tail(value)
        @text = @text + value
        @size += 1
    end

    def remove_head
        @text = @text.sub!(/^1/, "")
        @size -= 1
    end

    def remove_tail
        p @text
        @text = @text.chop
        @size -= 1
    end

    def head
        @text
    end

    def tail
        @text[-1..-1]
    end

    def text
        @text
    end

end