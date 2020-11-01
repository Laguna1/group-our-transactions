class ExternalTransactionsController < ApplicationController
  before_action :set_external_transaction, only: %i[show edit update destroy]

  # GET /external_transactions
  # GET /external_transactions.json
  def index
    @external_transactions = ExternalTransaction.all.order('created_at DESC')
  end

  # GET /external_transactions/1
  # GET /external_transactions/1.json
  def show; end

  # GET /external_transactions/new
  def new
    @external_transaction = current_user.external_transactions.build
  end

  # GET /external_transactions/1/edit
  def edit; end

  # POST /external_transactions
  # POST /external_transactions.json
  def create
    @external_transaction = current_user.external_transactions.build(external_transaction_params)

    respond_to do |format|
      if @external_transaction.save
        format.html { redirect_to @external_transaction, notice: 'External transaction was successfully created.' }
        format.json { render :show, status: :created, location: @external_transaction }
      else
        format.html { render :new }
        format.json { render json: @external_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /external_transactions/1
  # PATCH/PUT /external_transactions/1.json
  def update
    respond_to do |format|
      if @external_transaction.update(external_transaction_params)
        format.html { redirect_to @external_transaction, notice: 'External transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @external_transaction }
      else
        format.html { render :edit }
        format.json { render json: @external_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /external_transactions/1
  # DELETE /external_transactions/1.json
  def destroy
    @external_transaction.destroy
    respond_to do |format|
      format.html { redirect_to external_transactions_url, notice: 'External transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_external_transaction
    @external_transaction = ExternalTransaction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def external_transaction_params
    params.require(:external_transaction).permit(:name, :amount)
  end
end
