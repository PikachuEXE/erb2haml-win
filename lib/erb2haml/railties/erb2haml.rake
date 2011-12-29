require 'find'

RED_FG ="\033[31m"
GREEN_FG = "\033[32m"
END_TEXT_STYLE = "\033[0m"

# Helper method to inject ASCII escape sequences for colorized output
def color(text, begin_text_style)
  begin_text_style + text + END_TEXT_STYLE
end

namespace :haml do
  desc "Perform bulk conversion of all html.erb files to Haml in views folder. Windows only. Also delete erb files"
  task :toerb do

    if `where html2haml`.empty?
      puts "#{color 'ERROR: ', RED_FG} Could not find " +
         "#{color 'html2haml', GREEN_FG} in your PATH. Aborting."
      exit(false) 
    end

    puts "Looking for #{color "ERB", GREEN_FG} files to convert to " +
      "#{color('Haml', RED_FG)}..."

    Find.find("app/views/") do |path|
      if FileTest.file?(path) and path.downcase.match(/\.html\.erb$/i)
        haml_path = path.slice(0...-3)+"haml"

        unless FileTest.exists?(haml_path)
          print "Converting: #{path}... "

          if system("html2haml", path, haml_path)
            puts color("Done!", GREEN_FG)
          else
            puts color("Failed!", RED_FG)
          end

        end

      end
      
      puts 'Start deleting all erb files...'
      `del /s *.erb`
      puts 'All erb files deleted!!'
    end
  end #End rake task
end # End of :haml namespace

