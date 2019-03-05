class AuthorsController < ApplicationController

  def show
    @author = Author.find_by!(name: params[:id])
  end

end
