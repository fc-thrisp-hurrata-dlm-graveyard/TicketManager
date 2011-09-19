module TicketManager
  class TicketsController < ApplicationController
    respond_to :html

    def index
      q = params[:q]
      if q
        @tickets = Ticket.tagged_with(q)
      else
        @tickets = Ticket.all
      end 
      #@tickets = @tickets.paginate :per_page => 10,
      #                             :page => params[:page]
 
      #@mytags = Tag.all

      @resources = [@tickets]#, @mytags]
    
      respond_with @resources
    end

  end
end
