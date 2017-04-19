require('pry')

class String
  define_method(:title_case) do
    titlecased_words = []
    no_capital_words = ["to","the","of","from","and","but","or","by","on"]
    words = self.split()
    words.each do |word|
      if (word != words.at(0)) && (no_capital_words.include?(word))
        titlecased_words.push(word)
      else
        titlecased_words.push(word.capitalize)
      end
    end
    titlecased_words.join(" ")
  end
end
