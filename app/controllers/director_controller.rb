class DirectorController < ApplicationController
  def list
    @directors = Director.all
    render ({:template => "director/list"})
  end

  def detail
    director_select = params.fetch("the_id")
    matching_records = Director.where({ :id => director_select })
    @the_director = matching_records.at(0)
    render ({:template => "director/detail"})
  end

  def oldest
    matching_records = Director.where.not({ :dob => nil })
    @oldest_director = matching_records.order(:dob).first
    render ({:template => "director/oldest"})
  end

  def youngest
    matching_records = Director.where.not({ :dob => nil })
    @youngest_director = matching_records.order(:dob).last
    render ({:template => "director/youngest"})
  end


end
