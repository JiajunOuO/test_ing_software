class ReservasController < ApplicationController
  before_action :set_reserva, only: [:show, :edit, :update, :destroy]

  def index
    @reservas = Reserva.all
  end

  def show
  end

  def new
    @reserva = Reserva.new
  end

  def create
    @reserva = Reserva.new(reserva_params)
    @reserva.estado = "PENDIENTE"  # manejo de solicitudes: siempre parte en pendiente

    if @reserva.save
      redirect_to reservas_path, notice: "Reserva creada con éxito"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @reserva.update(reserva_params)
      redirect_to reservas_path, notice: "Reserva actualizada"
    else
      render :edit
    end
  end

  def destroy
    @reserva.update(estado: "CANCELADA")  # en vez de borrar, la cancelamos
    redirect_to reservas_path, notice: "Reserva cancelada"
  end

  private

  def set_reserva
    @reserva = Reserva.find(params[:id])
  end

  def reserva_params
    params.require(:reserva).permit(:fecha, :estado, :usuario_id, :opcion_id)
  end
end
