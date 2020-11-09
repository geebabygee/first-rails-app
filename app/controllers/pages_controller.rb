class PagesController < ApplicationController

  def about
  end

  def contact
    # raise
    @team = %w(Iri Val Rich Annie Andreea)

    member = params[:member]

    if member.present?
      @team = @team.select { |name| name.start_with?(member) }
    end

  end

  def home
    @date = Date.today.strftime("%A, %b %d")
  end


end


# Params is a hash populated with data from 2 places
# - get request query - url
# - post request body
