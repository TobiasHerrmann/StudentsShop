class ApartmentsController < InheritedResources::Base
  def index
    @q = Apartment.ransack(params[:q])
    @apartments = @q.result
  end

  
  def create
    @apartments = Apartment.new(params[:apartment])
    if @apartments.save
      redirect_to apartments_path,
      notice: "Angebot wurde erfolgreich erstellt."
    else
      render "new"
    end
  end
end