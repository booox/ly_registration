module ApplicationHelper
  def render_transportations(trans)
    eval(trans).map { |f| t(f, scope: "line.transportations") }.join('，')
  end
end
