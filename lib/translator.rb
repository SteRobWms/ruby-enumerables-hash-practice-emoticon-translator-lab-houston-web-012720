require 'yaml'
# emoticons = YAML.load_file('lib/emoticons.yml')

# puts emoticons

def load_library(file_path)
  loadme = YAML.load_file(file_path)
  translatorhash = {get_meaning: {}, get_emoticon: {}}
  loadme.each_key do |k|
    translatorhash[:get_meaning][loadme[k][1]] = k
  end
  loadme.each_key do |k|
    translatorhash[:get_emoticon][loadme[k][0]] = loadme[k][1]
  end
  translatorhash
end

# load_library('lib/emoticons.yml')

def get_japanese_emoticon(eng_emoticon)

end

def get_english_meaning(jap_emoticon)
  # code goes here
end
