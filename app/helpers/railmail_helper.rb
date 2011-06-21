module RailmailHelper
  def delivery_body(raw)

    return raw.body.decoded unless raw.multipart?
    
    html_parts = raw.parts.select {|p| p.content_type == 'text/html'}.map {|p| p = p.body.decoded}
    plain_parts = raw.parts.select {|p| p.content_type == 'text/plain'}.map {|p| p = %(<pre class="plain_text">) + p.body.decoded + %(</pre>)}
    other_parts = (raw.parts - html_parts - plain_parts).map {|p| p.body.decoded }
    
    part = html_parts.first || plain_parts.first || other_parts.first
    
  end
end
