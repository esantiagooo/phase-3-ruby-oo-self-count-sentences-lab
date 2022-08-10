require 'pry'

class String

  def sentence?
    # if self.end_with?(".")
    #   return true
    # else
    #   false
    # end
    self.end_with?(".") ? true : false
    # both solutions work, however I went with a simple clean ternary
  
  end

  def question?
    self.end_with?("?") ? true : false

  end

  def exclamation?
    self.end_with?("!") ? true : false

  end

  def count_sentences
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size

  end
end