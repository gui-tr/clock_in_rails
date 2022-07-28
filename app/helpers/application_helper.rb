module ApplicationHelper
  def button_text
    if controller.action_name == "new"
       return "Create"
    elsif controller.action_name == "edit"
       return "Update"
    else
       return "Submit"
    end
  end

  def date_from_parameters
    if params[:search].present?
      params[:search][:date]
    end
  end
end