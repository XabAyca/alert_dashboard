env, color =
  case ENV["ENV"]
  when "production" then ["PROD", "31"]
  when "test" then ["test", "34"]
  else ["dev", "32"]
  end

prompt_prefix = "\033[#{color}m[#{env}] %03n"

# Define our custom prompt
IRB.conf[:PROMPT] ||= {}
IRB.conf[:PROMPT][:NOTION_API] = {
  PROMPT_I: "#{prompt_prefix}>\033[0m ",
  PROMPT_N: "#{prompt_prefix}>\033[0m ",
  PROMPT_S: "#{prompt_prefix}%l\033[0m ",
  PROMPT_C: "#{prompt_prefix}*\033[0m ",
  RETURN: "=> %s\n"
}

# Use the custom  prompt
IRB.conf[:PROMPT_MODE] = :NOTION_API

# Disable buggy or distracting IRB autocompletion
IRB.conf[:USE_AUTOCOMPLETE] = false
IRB.conf[:USE_MULTILINE] = false
