module ChartsHelper
  def add_thing_link(slice)
    link_to_function slice do |page|
      page.insert_html :bottom, :things, :partial => 'thing', :object => Thing.new
    end
  end
end
