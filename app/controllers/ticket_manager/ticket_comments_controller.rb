module TicketManager
  class TicketCommentsController < ApplicationController
    respond_to :html

    #def show
    #  @ticket = Ticket.first(:slug=>params[:id])
    #  @comments = @ticket.ticket_comments.all
    #  respond_with @comments
    #end

    def create
      ticketcomment = TicketComment.create(params[:ticket_comment])
      redirect_to :back
    end

  end
end
