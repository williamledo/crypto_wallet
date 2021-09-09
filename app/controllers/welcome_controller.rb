class WelcomeController < ApplicationController
  def index
    @meu_nome = params[:nome]
    @nomeCurso = params[:curso]
  end
end
