class ReservasController < ApplicationController
  before_action :set_reserva, only: [:show, :edit, :update, :destroy]

  def index
    @reservas = Reserva.all.includes(:opcion)
  end

  def show
  end

  def new
    @reserva = Reserva.new
    @opciones = Opcion.all
  end

  def edit
    @opciones = Opcion.all
  end

  def create
    @reserva = Reserva.new(reserva_params)
    @reserva.estado = "pendiente"

    if @reserva.save
      redirect_to reservas_path, notice: "Reserva creada exitosamente."
    else
      @opciones = Opcion.all
      render :new
    end
  end

  def update
    if @reserva.update(reserva_params)
      redirect_to reservas_path, notice: "Reserva actualizada exitosamente."
    else
      @opciones = Opcion.all
      render :edit
    end
  end

  def destroy
    @reserva.destroy
    redirect_to reservas_path, notice: "Reserva cancelada exitosamente."
  end

  private

  def set_reserva
    @reserva = Reserva.find(params[:id])
  end

  def reserva_params
    params.require(:reserva).permit(:fecha, :usuario_id, :opcion_id)
  end
end
