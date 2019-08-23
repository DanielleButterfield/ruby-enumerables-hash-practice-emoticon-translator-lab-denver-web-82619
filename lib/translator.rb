require 'yaml'

def load_library(library)
  lib = {:get_emoticon => {}, :get_meaning => {}}
  YAML.load_file(library).keys.each do |emo|
    japamote = YAML.load_file(library)[emo][1]
    lib[:get_meaning][japamote] = emo
    engmote = YAML.load_file(library)[emo][0]
    lib[:get_emoticon][engmote] = japamote
  end
  return lib
end

def get_japanese_emoticon(library, emoticon)
  lib = load_library(library)
  emote = lib[:get_emoticon][emoticon]
end

def get_english_meaning
  # code goes here
end
