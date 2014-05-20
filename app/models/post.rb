class Post < ActiveRecord::Base

  def self.get_goodreads_posts
    requested_url = "http://www.goodreads.com/review/list?format=xml&v=2&key=kwUTYgBVE9VU7uVSsUQA&id=7050781&page=1&sort=date_started"
    url = URI.parse(requested_url)
    full_path = (url.query.nil?) ? url.path : "#{url.path}?#{url.query}"
    request = Net::HTTP::Get.new(full_path)
    # request.use_ssl = true
    response = Net::HTTP.start(url.host, url.port) { |http| http.request(request) }
    return Nokogiri::XML(response.body)
  end

  def self.create_goodreads_posts

  end
end
