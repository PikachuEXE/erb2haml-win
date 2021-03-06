require 'find'

RED_FG ="\033[31m"
GREEN_FG = "\033[32m"
END_TEXT_STYLE = "\033[0m"

# Helper method to inject ASCII escape sequences for colorized output
def color(text, begin_text_style)
  begin_text_style + text + END_TEXT_STYLE
end

namespace :haml do
  desc "Perform bulk conversion of all html.erb files to Haml in views folder. Windows only"
  task :toErb do

    #check dependency
    if `where html2haml`.empty?
      puts "#{color 'ERROR: ', RED_FG} Could not find " +
                   "#{color 'html2haml', GREEN_FG} in your PATH. Aborting."
      exit(false)
    end

    puts "Looking for #{color "ERB", GREEN_FG} files to convert to " +
                 "#{color('Haml', RED_FG)}..."

    Dir["app/views/**/*.html.erb"].each do |file|
      puts "#{color('Converting',RED_FG)}: #{file}..."
      `html2haml -e #{file} #{file.gsub(/\.erb$/, '.haml')}`
      puts "#{color('Converted',GREEN_FG)}: #{file}..."
    end
  end #End rake task

  desc "Delete html.erb files. Windows only"
  task :delErb do
    puts color('Start deleting all erb files...', RED_FG)
    puts `del .\\app\\views\\*.html.erb /s`
    puts color('All erb files deleted!!', GREEN_FG)
  end #End rake task

  desc "Convert and Delete html.erb files. Windows only"
  task :toDelErb => [:toErb,:delErb]
  
  desc "Perform bulk conversion of all js.erb files to Haml in views folder EXCEPT js.erb. Windows only"
  task :toJsErb do

    #check dependency
    if `where html2haml`.empty?
      puts "#{color 'ERROR: ', RED_FG} Could not find " +
                   "#{color 'html2haml', GREEN_FG} in your PATH. Aborting."
      exit(false)
    end

    puts "Looking for #{color "ERB", GREEN_FG} files to convert to " +
                 "#{color('Haml', RED_FG)}..."

    Dir["app/views/**/*.js.erb"].each do |file|
      puts "#{color('Converting',RED_FG)}: #{file}..."
      `html2haml -e #{file} #{file.gsub(/\.erb$/, '.haml')}`
      puts "#{color('Converted',GREEN_FG)}: #{file}..."
    end
  end #End rake task
  
  desc "Delete js.erb files. Windows only"
  task :delJsErb do
    puts color('Start deleting all erb files...', RED_FG)
    puts `del .\\app\\views\\*.js.erb /s`
    puts color('All erb files deleted!!', GREEN_FG)
  end #End rake task
  
  desc "Convert and Delete js.erb files. Windows only"
  task :toDelJsErb => [:toJsErb,:delJsErb]
  
  desc "Convert and Delete *.erb files. Windows only"
  task :toDelAllErb => [:toDelErb,:toDelJsErb]
  
end # End of :haml namespace

