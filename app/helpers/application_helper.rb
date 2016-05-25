module ApplicationHelper
  ALLOW_TAGS = %w(p br img h1 h2 h3 h4 h5 h6 blockquote pre code b i
                  strong em table tr td tbody th strike del u a ul ol li span hr)
  ALLOW_ATTRIBUTES = %w(href src class width height id title alt target rel data-floor)
  

  def markdown_html(content)
    sanitize(MarkdownConverter.convert(content), tags: ALLOW_TAGS, attributes: ALLOW_ATTRIBUTES)
  end

end
