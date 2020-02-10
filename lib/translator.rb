# require modules here
require "yaml"


def load_library(file)
  # code goes here
  
  yaml_hash = YAML.load_file(file)
  
  emoticons = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  yaml_hash.each do |meaning, emojis| 
    emoticons["get_meaning"][emojis[1]] = meaning
    emoticons["get_emoticon"][emojis[0]] = yaml_hash[meaning][1]
  end
  
  emoticons
end


def get_japanese_emoticon(file, emoji)
  # code goes here
  output = load_library(file)[emoji[0], emoji[1]]
end

def get_english_meaning(file, emoji)
  # code goes here
end