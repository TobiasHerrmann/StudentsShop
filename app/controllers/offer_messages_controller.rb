class OfferMessagesController < InheritedResources::Base
  
  # GET /offer_messages
  # GET /offer_messages.json
  def index
    @offer_messages = OfferMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offer_messages }
    end
  end

  # GET /offer_messages/1
  # GET /offer_messages/1.json
  def show
    @offer_message = OfferMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @offer_message }
    end
  end

  # GET /offer_messages/new
  # GET /offer_messages/new.json
  def new
    @offer_message = OfferMessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @offer_message }
    end
  end

  # GET /offer_messages/1/edit
  def edit
    @offer_message = OfferMessage.find(params[:id])
  end

  # POST /offer_messages
  # POST /offer_messages.json
  def create
    @offer_message = OfferMessage.new(params[:offer_message])

    respond_to do |format|
      if @offer_message.save
        OfferMailer.confirmation(@offer_message.email).deliver
        OfferMailer.inquiry(@offer_message).deliver
        format.html { redirect_to apartments_path, 
                      notice: 'Vielen Danke fuer Ihre Nachricht. Sie wurde erfolgreich versendet.' }
        format.json { render json: @offer_message, status: :created, location: @offer_message }
      else
        format.html { render action: "new" }
        format.json { render json: @offer_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /offer_messages/1
  # PUT /offer_messages/1.json
  def update
    @offer_message = OfferMessage.find(params[:id])

    respond_to do |format|
      if @offer_message.update_attributes(params[:offer_message])
        format.html { redirect_to @offer_message, notice: 'Angebotsanfrage wurde erfolgreich bearbeitet.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @offer_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_messages/1
  # DELETE /offer_messages/1.json
  def destroy
    @offer_message = OfferMessage.find(params[:id])
    @offer_message.destroy

    respond_to do |format|
      format.html { redirect_to offer_messages_url }
      format.json { head :no_content }
    end
  end
end
