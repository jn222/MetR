module ApplicationHelper
  def site_name
    "metr"
  end

  def site_url
    if Rails.env.production?
      "http://http://www.example.com/"
    else
      "http://localhost:3000"
    end
  end

  def meta_author
    "author"
  end

  def meta_description
    "Crowdsourced parking"
  end

  def full_title(page_title)
    if page_title.empty?
      site_name
    else
      "#{page_title} | #{site_name}"
    end
  end
  
end
