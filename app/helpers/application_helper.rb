module ApplicationHelper

  def rap msg
    raw ap msg
  end

  # Bootstrap helpers
  def btn_link_to(name, path, *options)
    tag_options = {}
    if !options.empty?
      options.first.each { |k,v| tag_options[k.to_s] = v.to_s }
    end

    tag_options.include?('class') ? tag_options['class'] += ' btn' : tag_options['class'] = 'btn'
    name = icon(tag_options.delete('icon'), (tag_options['class'] =~ /btn-/)) + ' ' + name if tag_options.include?('icon')
    link_to(name, path, tag_options)
  end

  def icon(name, white = nil)
    content_tag :i, '', :class => 'icon-%s%s' % [name.to_s.tr('_', '-'), (white.nil? ? '' : ' icon-white')]
  end

  def header(text, small = nil?)
    if small
      text << ' ' << content_tag(:small, small)
    end
    content_tag :div, content_tag(:h1, text.html_safe), :class => 'page-header'
  end
end
