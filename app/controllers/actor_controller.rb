class ActorController < ApplicationController
  def list
    @actors = Actor.all
    render ({:template => "actor/list"})
  end

  def detail
    actor_select = params.fetch("the_id")
    matching_records = Actor.where({ :id => actor_select })
    @the_actor = matching_records.at(0)
    render ({:template => "actor/detail"})
  end
end
