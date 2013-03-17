class CheckController < ApplicationController
  def check
    @result = ''
  end
  
  def checkaddress
    avail = Availability.where(:street => params[:fstreet], :nr => params[:fnr], :ort => params[:fcity]).first
    
    if avail == nil
      @result = 'nichts Verfuegbar'
    else
      @region = avail.region_id
      @technik = 2
      @plz = avail.plz
      tarife = Scale.where(:region_id => avail.region_id)
      @html = ""
      tarife.each do |t|
        @html = @html + t.notiz         
      end
      @html = @html.html_safe
      if avail.FTTC == 2
        @result = 'DSL / FTTC'
      elsif avail.FTTH == 2
        @result = 'Glasfaser / FTTH'
      elsif avail.Richtfunk == 2
        @result = 'Richtfunk'
      elsif avail.WiMax == 2
        @result = 'WiMax'
      end  
    end 
    
    @street = params[:fstreet]
    @nr = params[:fnr]
    
    @city = params[:fcity]
    
    render :action => :check
  end
end
