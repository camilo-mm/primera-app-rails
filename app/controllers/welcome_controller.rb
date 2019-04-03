class WelcomeController < ApplicationController
  def index
    @name = "mi nombre es camilo..."
  end

  def about
    redirect_to prices_path
  end
 
  def contact_us

  end

  def prices

  end

#vistas / metodos / acciones

end
