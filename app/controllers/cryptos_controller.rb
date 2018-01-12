# frozen_string_literal: true

class CryptosController < ProtectedController
  before_action :set_crypto, only: [:show, :update, :destroy]

  # GET /cryptos
  def index
    @cryptos = current_user.cryptos.all

    render json: @cryptos
  end

  # GET /cryptos/1
  def show
    render json: @crypto
  end

  # POST /cryptos
  def create
    @crypto = current_user.cryptos.build(person_params)

    if @crypto.save
      render json: @crypto, status: :created, location: @crypto
    else
      render json: @crypto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cryptos/1
  def update
    if @crypto.update(crypto_params)
      render json: @crypto
    else
      render json: @crypto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cryptos/1
  def destroy
    @crypto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crypto
      @crypto = current_user.cryptos.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def crypto_params
      params.require(:crypto).permit(:name, :quantity)
    end
end
