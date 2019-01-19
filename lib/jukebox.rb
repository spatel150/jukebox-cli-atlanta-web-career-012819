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

my_songs = {
 "Go Go GO" => '< /home/wise-channel-2810/jukebox-cli-atlanta-web-career-012819 >/jukebox-cli/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '< /home/wise-channel-2810/jukebox-cli-atlanta-web-career-012819  >/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '< /home/wise-channel-2810/jukebox-cli-atlanta-web-career-012819 >/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '< /home/wise-channel-2810/jukebox-cli-atlanta-web-career-012819 >/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => '< /home/wise-channel-2810/jukebox-cli-atlanta-web-career-012819 >/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => '< /home/wise-channel-2810/jukebox-cli-atlanta-web-career-012819 >/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '< /home/wise-channel-2810/jukebox-cli-atlanta-web-career-012819 >/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

# def say_hello(name)
  # "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  n = 1
  my_songs.each do |song|
    puts "#{n}. #{song}"
    n += 1
  end
end

def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  users_name = gets.chomp
   my_songs.each do |song|
    if users_name == song
      system 'open ' + my_songs[song]
      puts my_songs[song].value
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
  
  puts play(my_songs)
  
  
def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  user_response = ""
  while user_response != "exit"
  puts "Please enter a command:"
  user_response = gets.chomp
    if user_response == "list"
      list(my_songs)
    elsif user_response == "play"
      play(my_songs)
    elsif user_response == "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
      end
    end
  end
end