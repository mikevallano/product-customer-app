class PersonasController < ApplicationController
before_action :set_persona, only: [:show, :edit, :update, :destroy]

  def index
    @personas = Persona.all
  end

  def new
    @persona = Persona.new
  end

  def create
    @persona = Persona.new(white_listed_params)
      if @persona.save
        redirect_to action: "index"
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def update
    if @persona.update(white_listed_params)
        redirect_to action: "index"
      else
        render :edit
      end
  end

  def destroy
    @persona.destroy
    redirect_to action: "index"
  end



private

def set_persona
  @persona = Persona.find(params[:id])
end

def white_listed_params
  params.require(:persona).permit(:personaname, :age, :description)
end

end

