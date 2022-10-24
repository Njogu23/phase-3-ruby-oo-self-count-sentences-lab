require 'pry'

class String

  def sentence?
    self.end_with?(".")
    
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences
      if self.scan(/\W/).count == 0
        self.split(/\W/).count
      else
    self.scan(/\W/).grep(/\S/).concat(self.split.grep(/\w/)).count
    #self.scan(/[\w'-]+|[[:punct:]]/) also works
      end
  end
end

print "My, name is?"