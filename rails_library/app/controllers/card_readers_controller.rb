class CardReadersController < ApplicationController
  before_action :set_card_reader, only: %i[ show edit update destroy ]

  # GET /card_readers or /card_readers.json
  def index
    @card_readers = CardReader.all
  end

  # GET /card_readers/1 or /card_readers/1.json
  def show
  end

  # GET /card_readers/new
  def new
    @card_reader = CardReader.new
  end

  # GET /card_readers/1/edit
  def edit
  end

  # POST /card_readers or /card_readers.json
  def create
    @card_reader = CardReader.new(card_reader_params)

    respond_to do |format|
      if @card_reader.save
        format.html { redirect_to card_reader_url(@card_reader), notice: "Card reader was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_readers/1 or /card_readers/1.json
  def update
    respond_to do |format|
      if @card_reader.update(card_reader_params)
        format.html { redirect_to card_reader_url(@card_reader), notice: "Card reader was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_readers/1 or /card_readers/1.json
  def destroy
    @card_reader.destroy

    respond_to do |format|
      format.html { redirect_to card_readers_url, notice: "Card reader was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_reader
      @card_reader = CardReader.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def card_reader_params
      params.require(:card_reader).permit(:name_library, :name_book, :date_taking_book)
    end
end
