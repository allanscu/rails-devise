class BreadcrumbsTitleBuilder < BreadcrumbsOnRails::Breadcrumbs::Builder
  def render
    if @elements.any?
      @context.content_tag(:h1, :class => '') do
        [@elements.last.name].join.html_safe
      end
    else
      'Home'
    end
  end
end