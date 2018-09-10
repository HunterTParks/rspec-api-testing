class GroupController < ApplicationController
  def index
    @groups = Group.all
    if @groups.empty?
      head :no_content
    else
      json_response(@groups)
    end
  end

  def create

  end
end
