class GreeterController < ApplicationController
  def hello
  	random_names= ["Ayush","Dhoni","Kohli","Sachin","Al Pacino","Robert De Niro","Leonardo Dicaprio","Matt Damon","Brad Pitt"]
  	@name= random_names.sample
  	@time= Time.now
  	@times_displayed ||=0

  	s= File.open("timesDisplayed.txt","r")
  	while !s.eof?
  		@times_displayed=s.readline.to_i
  	end
  	@times_displayed+=1

  	s.close	
	myfile = File.open("timesDisplayed.txt", "w")
	myfile.puts @times_displayed
	myfile.close
  end
  def goodbye
  	puts "Ayush Jain"
  end
end
