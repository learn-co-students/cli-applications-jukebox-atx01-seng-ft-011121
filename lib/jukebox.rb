# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  track = 1
  songs.each do |i|
    puts "#{track.to_s}. #{i}"
    track += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip

  track_nums = (1..songs.length).map { |i| i.to_s }

  if track_nums.include?(input)
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip

  until command == "exit" do
    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
      puts "Invalid command try typing 'help' to see a list of valid commands"
    end
      
    command = gets.strip
  end

  exit_jukebox

end

