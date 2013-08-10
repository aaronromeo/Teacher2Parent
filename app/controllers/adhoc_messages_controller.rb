class AdhocMessagesController < ApplicationController
  before_action :set_adhoc_message, only: [:show, :edit, :update, :destroy]

  # GET /adhoc_messages
  # GET /adhoc_messages.json
  def index
    @adhoc_messages = AdhocMessage.all
  end

  # GET /adhoc_messages/1
  # GET /adhoc_messages/1.json
  def show
  end

  # GET /adhoc_messages/new
  def new
    @adhoc_message = AdhocMessage.new
  end

  # GET /adhoc_messages/1/edit
  def edit
  end

  # POST /adhoc_messages
  # POST /adhoc_messages.json
  def create
    @adhoc_message = AdhocMessage.new(adhoc_message_params)

    respond_to do |format|
      if @adhoc_message.save
        format.html { redirect_to @adhoc_message, notice: 'Adhoc message was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adhoc_message }
      else
        format.html { render action: 'new' }
        format.json { render json: @adhoc_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adhoc_messages/1
  # PATCH/PUT /adhoc_messages/1.json
  def update
    respond_to do |format|
      if @adhoc_message.update(adhoc_message_params)
        format.html { redirect_to @adhoc_message, notice: 'Adhoc message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adhoc_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adhoc_messages/1
  # DELETE /adhoc_messages/1.json
  def destroy
    @adhoc_message.destroy
    respond_to do |format|
      format.html { redirect_to adhoc_messages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adhoc_message
      @adhoc_message = AdhocMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adhoc_message_params
      params.require(:adhoc_message).permit(:isNew, :student_id, :user_id)
    end
end
