# Add your code here
require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  #binding.pry
  songs.each_with_index do |song,index|
    puts (index+1).to_s + ". #{songs[index]}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.strip
  
  if answer == "0" or answer.to_i+1>9
    puts "Invalid input, please try again"
  elsif answer.to_i == 0
    if songs.find {|i| i==answer}
      puts "Playing #{songs.find {|i| i==answer}}"
    else
      puts "Invalid input, please try again"
    end
  else
    puts "Playing #{songs[answer.to_i-1]}"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  puts "Please enter a command:"
  input = gets.strip
  
  while input != "exit" do
    
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    else
      puts "Invalid input"
    end
    
    puts "Please enter a command:"
    input = gets.strip
  
  end
  exit_jukebox
end

#run(songs) 
