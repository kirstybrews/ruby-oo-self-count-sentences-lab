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
    sentences = self.split(/(\.|\!|\?)/)
    sentences.count do | each_sentence |
      each_sentence.length > 1
    end
  end

end