module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    return base_title if page_title.empty?
    return page_title + " | " + base_title
  end

end


# ------------- When checkout new branch should -------------
# git push -u origin static-pages
# git push
# 1 - create new "static-pages" branch on server && usually to push