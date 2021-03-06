module ApplicationHelper
  def render_transportations(trans)
    eval(trans).map { |f| t(f, scope: "line.transportations") }.join('，')
  end

  def render_room_share(is_room_share)
    is_room_share ? t("registration.room_share_true") : t("registration.room_share_false")
  end

  def render_step1(line_id)
    line_id ? "Step 1 " : ""
  end

  def active_class(link_path)
    current_page?(link_path) ? "active" : ""
  end
  
end
