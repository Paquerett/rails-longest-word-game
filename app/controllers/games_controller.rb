class GamesController < ApplicationController
  def new
    # @letters = @randomletters.join
    @randomletter = [*('A'..'Z')].sample(10)
    @cool = @randomletter.join
  end

  def score
    @givenletters = params[:letter]
    @randomletter = params[:token]
    if @givenletters.include?(@randomletter)
      return "Ok"
    end
  end
end
