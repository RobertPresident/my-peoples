class ContactsController < ApplicationController

    def index
      @contacts = Contact.all
      # search_term = params[:search_term]    
    end


    # if search_term
    #   @contacts = @contacts.where("first_name LIKE ? OR last_name LIKE ?", search_term, search_term)
    # end

    def new
      
    end

    def create
      contact = Contact.create(
          user_id: current_user.id,
          first_name: params[:first_name],
          last_name: params[:last_name],
          email: params[:email],
          phone_number: params[:phone_number]
        )

      flash[:success] = "Contact Created"
      redirect_to "/contacts/#{contact.id}"
    end

    def show
      @contact = Contact.find(params[:id])
    end

    def edit
      @contact = Contact.find(params[:id])
    end

    def update
      contact = Contact.find(params[:id])

      contact.update(
          first_name: params[:first_name],
          last_name: params[:last_name],
          email: params[:email],
          phone_number: params[:phone_number]
        )

      flash[:success] = "Contact Updated"
      redirect_to "/contacts/#{contact.id}"
    end

    def destroy
      contact = Contact.find(params[:id])
      contact.destroy

      flash[:warning] = "Contact Destroyed"
      redirect_to '/'
    end
  end
