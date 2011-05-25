class PhraseGenerator
  PHRASES = ["If * is an *, not an *, then don't put '*' down as a cause", 
    "Due to the '*' theory, in a complex systema, * often occurs",
    "* always gets in the way of solving * problems",
    "In * systems the idea is that * is only knowable after it has emerged & may not be replicable again"]
  WORDS = ["culture", "output", "input", "command & control culture", "retrospective coherence", "double loop learning", "transformation", "causal theory", "causality",
  "complex adaptive"]

  def generate
    parts = choose_phrase.split('*')
    parts[0..parts.length - 2].inject('') { |result, part| "#{result}#{part}#{choose_word}" } + parts[-1]
  end

  def choose_phrase
    PHRASES[rand(PHRASES.size)]
  end

  def choose_word
    WORDS[rand(WORDS.size)]
  end
end

puts PhraseGenerator.new.generate
