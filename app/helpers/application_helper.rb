module ApplicationHelper
  def render_transportations(trans)
    eval(trans).map { |f| t(f, scope: "line.transportations") }.join('，')
  end

  def render_room_share(is_room_share)
    is_room_share ? t("registration.room_share_true") : t("registration.room_share_false")
  end
end
