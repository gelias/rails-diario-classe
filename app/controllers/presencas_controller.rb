class PresencasController < ApplicationController
  before_action :set_presenca, only: [:show, :edit, :update, :destroy]

  # GET /presencas
  # GET /presencas.json
  def index
    @presencas = Presenca.includes(:estudante).order("estudantes.nome").all
  end

  # GET /presencas/1
  # GET /presencas/1.json
  def show
  end

  # GET /presencas/new
  def new
    @presenca = Presenca.new
    @estudantes = Estudante.order("nome").all
    @disciplinas = Disciplina.order("nome").all
  end

  # GET /presencas/1/edit
  def edit
    @estudantes = Estudante.all
    @disciplinas = Disciplina.all
  end

  # POST /presencas
  # POST /presencas.json
  def create
    @presenca = Presenca.new(presenca_params)

    respond_to do |format|
      if @presenca.save
        format.html { redirect_to @presenca, notice: 'Presenca was successfully created.' }
        format.json { render :show, status: :created, location: @presenca }
      else
        format.html { render :new }
        format.json { render json: @presenca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presencas/1
  # PATCH/PUT /presencas/1.json
  def update
    respond_to do |format|
      if @presenca.update(presenca_params)
        format.html { redirect_to @presenca, notice: 'Presenca was successfully updated.' }
        format.json { render :show, status: :ok, location: @presenca }
      else
        format.html { render :edit }
        format.json { render json: @presenca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presencas/1
  # DELETE /presencas/1.json
  def destroy
    @presenca.destroy
    respond_to do |format|
      format.html { redirect_to presencas_url, notice: 'Presenca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presenca
      @presenca = Presenca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presenca_params
      params.require(:presenca).permit(:estudante_id, :disciplina_id)
    end
end
