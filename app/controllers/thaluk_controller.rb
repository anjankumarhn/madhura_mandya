class ThalukController < ApplicationController

 def index
  @thaluks = Thaluk.all
 end

end
