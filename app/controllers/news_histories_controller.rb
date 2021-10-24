class NewsHistoriesController < ApplicationController
  before_action :set_news_history, only: %i[ show edit update destroy ]

  # GET /news_histories or /news_histories.json
  def index
    @news_histories = NewsHistory.all
  end

  # GET /news_histories/1 or /news_histories/1.json
  def show
  end

  # GET /news_histories/new
  def new
    @news_history = NewsHistory.new
  end

  # GET /news_histories/1/edit
  def edit
  end

  # POST /news_histories or /news_histories.json
  def create
    @news_history = NewsHistory.new(news_history_params)

    respond_to do |format|
      if @news_history.save
        format.html { redirect_to @news_history, notice: "News history was successfully created." }
        format.json { render :show, status: :created, location: @news_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @news_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_histories/1 or /news_histories/1.json
  def update
    respond_to do |format|
      if @news_history.update(news_history_params)
        format.html { redirect_to @news_history, notice: "News history was successfully updated." }
        format.json { render :show, status: :ok, location: @news_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @news_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_histories/1 or /news_histories/1.json
  def destroy
    @news_history.destroy
    respond_to do |format|
      format.html { redirect_to news_histories_url, notice: "News history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_history
      @news_history = NewsHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def news_history_params
      params.require(:news_history).permit(:user_id, :price, :detail)
    end
end
