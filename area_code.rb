dial_book = {
    "riodejaneiro" => "21",
    "saopaulo" => "11",
    "vitoria" => "27",
    "belohorizonte" => "31",
    "curitiba" => "41",
    "florianopolis" => "48",
    "portoalegre" => "51",
    "df" => "61",
    "goiania" => "62",
    "salvador" => "71",
    "cuiaba" => "65",
    "palmas" => "63",
    "riobranco" => "68",
    "portovelho" => "69",
    "aracaju" => "79",
    "recife" => "81",
    "maceio" => "82",
    "joaopessoa" => "83",
    "natal" => "84",
    "fortaleza" => "85",
    "teresina" => "86",
    "belem" => "91",
    "manaus" => "92",
    "boavista" => "95",
    "macapa" => "96",
    "saoluis" => "98",


  }
   
  # Get city names from the hash
  def get_city_names(somehash)
  somehash.keys
  end
   
  # Get area code based on given hash and key
  def get_area_code(somehash, key)
  somehash[key]
  end
   
  # Execution flow
  loop do
    puts "Do you want to lookup an area code based on a city name? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city do you want to lookup the area code for?"
    puts get_city_names(dial_book)
    puts "Enter your selection"
    prompt = gets.chomp 
    if dial_book.include?(prompt)
        puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
    else
        puts "You entered an invalid city name"
    end
  end
   