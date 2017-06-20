module UserProfilesHelper
  def render_hiddle_line_id
    if params[:selected_line_id].present?
      hidden_field_tag :selected_line_id, params[:selected_line_id]
    end
  end
end
