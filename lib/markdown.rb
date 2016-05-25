require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

class HTMLWithRouge < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet

  def table(header, body)
    %(<table class="table table-bordered table-striped">#{header}#{body}</table>)
  end
end

class MarkdownConverter
  include Singleton

  def self.convert(text)
    instance.convert(text)
  end

  def self.format(raw)
    instance.format(raw)
  end

  def convert(text)
    @converter.render(text)
  end

  def format(raw)
    text = raw.clone
    return '' if text.blank?
    convert(text)
  end

  private

  def initialize
    opts = {
      autolink: true,
      fenced_code_blocks: true,
      strikethrough: true,
      tables: true,
      space_after_headers: true,
      disable_indented_code_blocks: true,
      no_intra_emphasis: true
    }
    html_render = HTMLWithRouge.new
    @converter = Redcarpet::Markdown.new(html_render, opts)
  end
end