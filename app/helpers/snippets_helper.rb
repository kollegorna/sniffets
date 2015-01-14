module SnippetsHelper

  def snippet_for(name, default = nil, &block)
    Rails.cache.fetch("snippet::#{name}") do
      snippet = Snippet.published.find_by_name(name.to_s)
      return snippet.to_s.html_safe unless snippet.blank?
      default = capture(&block) if block_given?
      return "Snippet for #{name} missing" unless default
      Snippet.create(name: name, snippet: default) unless Snippet.find_by_name(name.to_s)
      default.to_s.html_safe
    end
  end

  alias_method :s, :snippet_for
end
