class StaticPageController < ApplicationController
  def team
  	puts "la methode #team est en succès"
  end
  def contact
  	puts "la methode #contact est en succès"
  end
  def show
  	 puts ' beinh ça marche #show quoi!!!'
  	#params[:first_name]
  	 #@user = User.find(params[:first_name])
  	 #params[:first_name]
  	 #@user=User.first
  	 #@fi = params[:first_name]
     @user= User.all
  	 @gossip = Gossip.all

     #@user = User.find(params[:first_name])
  	 #puts "la methode #show est en succès"
    
    #@u= User.all.each {|i| puts i.first_name} 
    #redirect_to :@u

  end
  def index
  end 
  def potin	
  @potin =Gossip.find(params[:id].to_i)
  @user= User.all
  @gossip = Gossip.all

     
   #for i in 0...19 do
   #i=(0..19)
   #for n in i
 # puts @author = @use[n]
   #i+=1
    #@author=use.each do |i| puts i.first_name end
    #@u= author[:first_name]
  end
  def autor
  @use =User.find(params[:user_id].to_i)
  @user= User.all
  @gossip = Gossip.all
  
  
  end
end

