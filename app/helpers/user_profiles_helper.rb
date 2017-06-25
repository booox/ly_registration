module UserProfilesHelper
  def render_hiddle_line_id
    if params[:selected_line_id].present?
      hidden_field_tag :selected_line_id, params[:selected_line_id]
    end
  end

  def room_share_class(val)
    val ? "radio_buttons optional room_share room_share_yes" : "radio_buttons optional room_share room_share_no"
  end
end
