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
end