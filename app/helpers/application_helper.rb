module ApplicationHelper

  def get_course
    Thaluk.all.collect {|course| [course.name, course.id]}
  end

end
