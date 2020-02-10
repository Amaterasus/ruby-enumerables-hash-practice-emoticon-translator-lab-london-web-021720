# require modules here
require "yaml"


def load_library(file)
  # code goes here
  
  yaml_hash = YAML.load_file(file)
  
  emoticons = {}
  
  yaml_hash.each do |meaning, emojis| 
    emoticons[:get_meaning] = meaning
    
  end
  
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end