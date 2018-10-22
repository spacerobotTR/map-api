module ApplicationHelper
  def created_at_from_parameters
    if params[:search].present?
      params[:search][:created_at]
    end
  end
end
